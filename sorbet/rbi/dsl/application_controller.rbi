# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `ApplicationController`.
# Please instead update this file by running `bin/tapioca dsl ApplicationController`.

class ApplicationController
  include GeneratedUrlHelpersModule
  include GeneratedPathHelpersModule

  sig { returns(HelperProxy) }
  def helpers; end

  module HelperMethods
    include ::Turbo::DriveHelper
    include ::Turbo::FramesHelper
    include ::Turbo::IncludesHelper
    include ::Turbo::StreamsHelper
    include ::ActionView::Helpers::CaptureHelper
    include ::ActionView::Helpers::OutputSafetyHelper
    include ::ActionView::Helpers::TagHelper
    include ::Turbo::Streams::ActionHelper
    include ::ActionText::ContentHelper
    include ::ActionText::TagHelper
    include ::Importmap::ImportmapTagsHelper
    include ::InertiaRails::Helper
    include ::Hotwire::Livereload::LivereloadTagsHelper
    include ::ViteRails::TagHelpers
    include ::ActionController::Base::HelperMethods
    include ::ApplicationHelper
    include ::BillOfTheWeekHelper
    include ::BillScoreDistrictsHelper
    include ::BillScoresHelper
    include ::BillsHelper
    include ::DistrictsHelper
    include ::InfluenceHelper
    include ::LegislatorVotesHelper
    include ::LegislatorsHelper
    include ::PhoneVerificationHelper
    include ::RegistrationHelper
    include ::SwayLocalesHelper
    include ::UserDistrictsHelper
    include ::UserInvitesHelper
    include ::UserLegislatorScoresHelper
    include ::UserLegislatorsHelper
    include ::UserVotesHelper
    include ::UsersHelper
    include ::Users::WebauthnHelper
    include ::Users::Webauthn::AuthenticationHelper
    include ::Users::Webauthn::PasskeysHelper
    include ::Users::Webauthn::RegistrationHelper
    include ::Users::Webauthn::SessionsHelper

    sig { returns(T.nilable(::SwayLocale)) }
    def current_sway_locale; end

    sig { returns(T.nilable(::User)) }
    def current_user; end

    sig { void }
    def redirect_if_no_current_user; end

    sig { returns(T::Boolean) }
    def verify_is_admin; end
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
