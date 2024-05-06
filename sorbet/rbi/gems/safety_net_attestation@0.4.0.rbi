# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `safety_net_attestation` gem.
# Please instead update this file by running `bin/tapioca gem safety_net_attestation`.

# source://safety_net_attestation//lib/safety_net_attestation.rb#3
module SafetyNetAttestation; end

# source://safety_net_attestation//lib/safety_net_attestation/errors.rb#8
class SafetyNetAttestation::CertificateSubjectError < ::SafetyNetAttestation::Error; end

# source://safety_net_attestation//lib/safety_net_attestation/errors.rb#4
class SafetyNetAttestation::Error < ::StandardError; end

# source://safety_net_attestation//lib/safety_net_attestation/fixed_length_secure_compare.rb#6
module SafetyNetAttestation::FixedLengthSecureCompare; end

# source://safety_net_attestation//lib/safety_net_attestation.rb#4
SafetyNetAttestation::GEM_ROOT = T.let(T.unsafe(nil), String)

# source://safety_net_attestation//lib/safety_net_attestation/errors.rb#6
class SafetyNetAttestation::NonceMismatchError < ::SafetyNetAttestation::Error; end

# source://safety_net_attestation//lib/safety_net_attestation/errors.rb#5
class SafetyNetAttestation::NotVerifiedError < ::SafetyNetAttestation::Error; end

# source://safety_net_attestation//lib/safety_net_attestation/x5c_key_finder.rb#7
class SafetyNetAttestation::SignatureError < ::SafetyNetAttestation::Error; end

# source://safety_net_attestation//lib/safety_net_attestation/statement.rb#11
class SafetyNetAttestation::Statement
  # @return [Statement] a new instance of Statement
  #
  # source://safety_net_attestation//lib/safety_net_attestation/statement.rb#23
  def initialize(jws_result); end

  # @raise [NotVerifiedError]
  #
  # source://safety_net_attestation//lib/safety_net_attestation/statement.rb#77
  def advice; end

  # @raise [NotVerifiedError]
  #
  # source://safety_net_attestation//lib/safety_net_attestation/statement.rb#65
  def apk_certificate_digest_sha256; end

  # @raise [NotVerifiedError]
  #
  # source://safety_net_attestation//lib/safety_net_attestation/statement.rb#59
  def apk_package_name; end

  # @raise [NotVerifiedError]
  # @return [Boolean]
  #
  # source://safety_net_attestation//lib/safety_net_attestation/statement.rb#53
  def basic_integrity?; end

  # @raise [NotVerifiedError]
  #
  # source://safety_net_attestation//lib/safety_net_attestation/statement.rb#83
  def certificate_chain; end

  # @raise [NotVerifiedError]
  # @return [Boolean]
  #
  # source://safety_net_attestation//lib/safety_net_attestation/statement.rb#47
  def cts_profile_match?; end

  # @raise [NotVerifiedError]
  #
  # source://safety_net_attestation//lib/safety_net_attestation/statement.rb#71
  def error; end

  # Returns the value of attribute json.
  #
  # source://safety_net_attestation//lib/safety_net_attestation/statement.rb#21
  def json; end

  # source://safety_net_attestation//lib/safety_net_attestation/statement.rb#27
  def verify(nonce, timestamp_leeway: T.unsafe(nil), trusted_certificates: T.unsafe(nil), time: T.unsafe(nil)); end

  private

  # source://safety_net_attestation//lib/safety_net_attestation/statement.rb#91
  def verify_certificate_subject(certificate); end

  # source://safety_net_attestation//lib/safety_net_attestation/statement.rb#99
  def verify_nonce(response, nonce); end

  # source://safety_net_attestation//lib/safety_net_attestation/statement.rb#105
  def verify_timestamp(response, leeway, time); end
end

# source://safety_net_attestation//lib/safety_net_attestation/statement.rb#12
SafetyNetAttestation::Statement::GOOGLE_ROOT_CERTIFICATES = T.let(T.unsafe(nil), Array)

# source://safety_net_attestation//lib/safety_net_attestation/errors.rb#7
class SafetyNetAttestation::TimestampError < ::SafetyNetAttestation::Error; end

# source://safety_net_attestation//lib/safety_net_attestation/version.rb#4
SafetyNetAttestation::VERSION = T.let(T.unsafe(nil), String)

# source://safety_net_attestation//lib/safety_net_attestation/x5c_key_finder.rb#9
class SafetyNetAttestation::X5cKeyFinder
  class << self
    # source://safety_net_attestation//lib/safety_net_attestation/x5c_key_finder.rb#10
    def from(x5c_certificates, trusted_certificates, time: T.unsafe(nil)); end
  end
end
