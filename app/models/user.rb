# typed: true

# == Schema Information
#
# Table name: users
#
#  id                       :bigint           not null, primary key
#  email                    :string
#  is_email_verified        :boolean
#  phone                    :string
#  is_phone_verified        :boolean
#  is_registration_complete :boolean
#  is_registered_to_vote    :boolean
#  is_admin                 :boolean          default(FALSE)
#  webauthn_id              :string
#  sign_in_count            :integer          default(0), not null
#  current_sign_in_at       :datetime
#  last_sign_in_at          :datetime
#  current_sign_in_ip       :string
#  last_sign_in_ip          :string
#  address_id               :bigint
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#
class User < ApplicationRecord
  extend T::Sig

  attr_accessor :webauthn_id

  CREDENTIAL_MIN_AMOUNT = 1

  has_many :passkeys, dependent: :destroy

  validates :phone, presence: true, uniqueness: true
  validates :email, uniqueness: true

  after_initialize do
    self.webauthn_id ||= WebAuthn.generate_user_id
    self.is_phone_verified = false
  end

  before_create do
    self.is_email_verified = false
    self.is_phone_verified = false
    self.is_registration_complete = false
    self.is_registered_to_vote = false
    self.is_admin = false

    self.sign_in_count = 0
  end

  before_save do
    self.phone = phone&.tr('^0-9', '')
  end

  sig { returns(Jbuilder) }
  def to_builder
    Jbuilder.new do |user|
      user.id id
      user.email email
      user.phone phone
      user.is_registration_complete is_registration_complete
      user.is_registered_to_vote is_registered_to_vote
    end
  end

  sig { returns(T::Boolean) }
  def can_delete_passkeys?
    passkeys.size > CREDENTIAL_MIN_AMOUNT
  end
end
