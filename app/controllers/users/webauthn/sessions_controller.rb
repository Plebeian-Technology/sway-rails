# typed: true

# frozen_string_literal: true

class Users::Webauthn::SessionsController < ApplicationController
  extend T::Sig
  include Authentication

  before_action :test_recaptcha, only: [:create]

  def create
    user = User.find_by(phone: phone)

    if user && user.has_passkey?
      get_options = relying_party.options_for_authentication(
        allow: user.passkeys.pluck(:external_id),
        user_verification: 'required'
      )

      session[:current_authentication] = { challenge: get_options.challenge, phone: phone }

      render json: get_options
    elsif phone.present?
      render json: { success: send_phone_verification(session, phone) }, status: 202
    else
      render json: { success: false }, status: :unprocessable_entity
    end
  end

  def callback
    user = User.find_by(phone: session.dig(:current_authentication, 'phone'))
    raise "user #{session.dig(:current_authentication, 'phone')} never initiated sign up" unless user

    begin
      verified_webauthn_passkey, stored_passkey = relying_party.verify_authentication(
        public_key_credential_params,
        session.dig(:current_authentication, 'challenge'),
        user_verification: true
      ) do |webauthn_passkey|
        user.passkeys.find_by(external_id: Base64.strict_encode64(webauthn_passkey.raw_id))
      end

      stored_passkey.update!(sign_count: verified_webauthn_passkey.sign_count)
      sign_in(user)

      if user.is_registration_complete
        T.unsafe(self).route_legislators
      else
        T.unsafe(self).route_registration
      end
    rescue WebAuthn::Error => e
      render json: {
        success: false,
        message: "Verification failed: #{e.message}"
      }, status: :unprocessable_entity
    ensure
      session.delete(:current_authentication)
    end
  end

  def destroy
    sign_out

    redirect_to root_path
  end

  private

  def session_params
    params.require(:session).permit(:phone, :publicKeyCredential)
  end

  def public_key_credential_params
    # params.require(:session).require(:publicKeyCredential).permit(:type, :id, :rawId, :authenticatorAttachment,
    #                                                               :response, :userHandle, :clientExtensionResults)
    params.require(:session).require(:publicKeyCredential)
  end

  sig { returns(T.nilable(String)) }
  def phone
    session_params[:phone]&.remove_non_digits
  end
end
