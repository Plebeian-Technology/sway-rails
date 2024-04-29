# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for dynamic methods in `Rails::Conductor::BaseController`.
# Please instead update this file by running `bin/tapioca dsl Rails::Conductor::BaseController`.

class Rails::Conductor::BaseController
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
    include ::BillScoreDistrictsHelper
    include ::BillScoresHelper
    include ::BillsHelper
    include ::DistrictsHelper
    include ::LegislatorVotesHelper
    include ::LegislatorsHelper
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
    include ::VotesHelper
  end

  class HelperProxy < ::ActionView::Base
    include HelperMethods
  end
end
