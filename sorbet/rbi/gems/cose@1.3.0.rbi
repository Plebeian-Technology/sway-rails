# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `cose` gem.
# Please instead update this file by running `bin/tapioca gem cose`.

# source://cose//lib/cose/algorithm/base.rb#3
module COSE; end

# source://cose//lib/cose/algorithm/base.rb#4
module COSE::Algorithm
  class << self
    # source://cose//lib/cose/algorithm.rb#22
    def by_id(id); end

    # source://cose//lib/cose/algorithm.rb#26
    def by_name(name); end

    # source://cose//lib/cose/algorithm.rb#18
    def find(id_or_name); end

    # source://cose//lib/cose/algorithm.rb#13
    def register(algorithm); end
  end
end

# source://cose//lib/cose/algorithm/base.rb#5
class COSE::Algorithm::Base
  # @return [Base] a new instance of Base
  #
  # source://cose//lib/cose/algorithm/base.rb#8
  def initialize(id, name); end

  # Returns the value of attribute id.
  #
  # source://cose//lib/cose/algorithm/base.rb#6
  def id; end

  # Returns the value of attribute name.
  #
  # source://cose//lib/cose/algorithm/base.rb#6
  def name; end
end

# source://cose//lib/cose/algorithm/ecdsa.rb#12
class COSE::Algorithm::ECDSA < ::COSE::Algorithm::SignatureAlgorithm
  # @return [ECDSA] a new instance of ECDSA
  #
  # source://cose//lib/cose/algorithm/ecdsa.rb#15
  def initialize(*args, hash_function:, curve_name:); end

  # Returns the value of attribute curve.
  #
  # source://cose//lib/cose/algorithm/ecdsa.rb#13
  def curve; end

  # Returns the value of attribute hash_function.
  #
  # source://cose//lib/cose/algorithm/ecdsa.rb#13
  def hash_function; end

  private

  # source://cose//lib/cose/algorithm/ecdsa.rb#30
  def signature_algorithm_class; end

  # source://cose//lib/cose/algorithm/ecdsa.rb#34
  def signature_algorithm_parameters; end

  # source://cose//lib/cose/algorithm/ecdsa.rb#42
  def to_pkey(key); end

  # @return [Boolean]
  #
  # source://cose//lib/cose/algorithm/ecdsa.rb#24
  def valid_key?(key); end
end

# source://cose//lib/cose/algorithm/eddsa.rb#10
class COSE::Algorithm::EdDSA < ::COSE::Algorithm::SignatureAlgorithm
  private

  # source://cose//lib/cose/algorithm/eddsa.rb#19
  def to_pkey(key); end

  # @return [Boolean]
  #
  # source://cose//lib/cose/algorithm/eddsa.rb#13
  def valid_key?(key); end

  # @return [Boolean]
  #
  # source://cose//lib/cose/algorithm/eddsa.rb#30
  def valid_signature?(key, signature, verification_data); end
end

# source://cose//lib/cose/algorithm/hmac.rb#8
class COSE::Algorithm::HMAC < ::COSE::Algorithm::Base
  # @return [HMAC] a new instance of HMAC
  #
  # source://cose//lib/cose/algorithm/hmac.rb#13
  def initialize(*args, hash_function:, tag_length:); end

  # Returns the value of attribute hash_function.
  #
  # source://cose//lib/cose/algorithm/hmac.rb#11
  def hash_function; end

  # source://cose//lib/cose/algorithm/hmac.rb#20
  def mac(key, to_be_signed); end

  # Returns the value of attribute tag_length.
  #
  # source://cose//lib/cose/algorithm/hmac.rb#11
  def tag_length; end

  private

  # source://cose//lib/cose/algorithm/hmac.rb#32
  def tag_bytesize; end
end

# source://cose//lib/cose/algorithm/hmac.rb#9
COSE::Algorithm::HMAC::BYTE_LENGTH = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/algorithm/rsa_pss.rb#11
class COSE::Algorithm::RSAPSS < ::COSE::Algorithm::SignatureAlgorithm
  # @return [RSAPSS] a new instance of RSAPSS
  #
  # source://cose//lib/cose/algorithm/rsa_pss.rb#14
  def initialize(*args, hash_function:, salt_length:); end

  # Returns the value of attribute hash_function.
  #
  # source://cose//lib/cose/algorithm/rsa_pss.rb#12
  def hash_function; end

  # Returns the value of attribute salt_length.
  #
  # source://cose//lib/cose/algorithm/rsa_pss.rb#12
  def salt_length; end

  private

  # source://cose//lib/cose/algorithm/rsa_pss.rb#27
  def signature_algorithm_class; end

  # source://cose//lib/cose/algorithm/rsa_pss.rb#31
  def to_pkey(key); end

  # @return [Boolean]
  #
  # source://cose//lib/cose/algorithm/rsa_pss.rb#23
  def valid_key?(key); end
end

# source://cose//lib/cose/algorithm/signature_algorithm.rb#8
class COSE::Algorithm::SignatureAlgorithm < ::COSE::Algorithm::Base
  # @return [Boolean]
  #
  # source://cose//lib/cose/algorithm/signature_algorithm.rb#14
  def compatible_key?(key); end

  # source://cose//lib/cose/algorithm/signature_algorithm.rb#9
  def verify(key, signature, verification_data); end

  private

  # @raise [NotImplementedError]
  #
  # source://cose//lib/cose/algorithm/signature_algorithm.rb#48
  def signature_algorithm_class; end

  # source://cose//lib/cose/algorithm/signature_algorithm.rb#33
  def signature_algorithm_parameters; end

  # source://cose//lib/cose/algorithm/signature_algorithm.rb#37
  def to_cose_key(key); end

  # @raise [NotImplementedError]
  #
  # source://cose//lib/cose/algorithm/signature_algorithm.rb#56
  def to_pkey(_key); end

  # @raise [NotImplementedError]
  # @return [Boolean]
  #
  # source://cose//lib/cose/algorithm/signature_algorithm.rb#52
  def valid_key?(_key); end

  # @return [Boolean]
  #
  # source://cose//lib/cose/algorithm/signature_algorithm.rb#22
  def valid_signature?(key, signature, verification_data); end
end

# source://cose//lib/cose/encrypt.rb#7
class COSE::Encrypt < ::COSE::SecurityMessage
  # @return [Encrypt] a new instance of Encrypt
  #
  # source://cose//lib/cose/encrypt.rb#14
  def initialize(ciphertext:, recipients:, **keyword_arguments); end

  # Returns the value of attribute ciphertext.
  #
  # source://cose//lib/cose/encrypt.rb#8
  def ciphertext; end

  # Returns the value of attribute recipients.
  #
  # source://cose//lib/cose/encrypt.rb#8
  def recipients; end

  class << self
    # source://cose//lib/cose/encrypt.rb#10
    def keyword_arguments_for_initialize(decoded); end
  end
end

# source://cose//lib/cose/encrypt0.rb#6
class COSE::Encrypt0 < ::COSE::SecurityMessage
  # @return [Encrypt0] a new instance of Encrypt0
  #
  # source://cose//lib/cose/encrypt0.rb#13
  def initialize(ciphertext:, **keyword_arguments); end

  # Returns the value of attribute ciphertext.
  #
  # source://cose//lib/cose/encrypt0.rb#7
  def ciphertext; end

  class << self
    # source://cose//lib/cose/encrypt0.rb#9
    def keyword_arguments_for_initialize(decoded); end
  end
end

# source://cose//lib/cose/error.rb#4
class COSE::Error < ::StandardError; end

# source://cose//lib/cose/key/curve.rb#4
module COSE::Key
  class << self
    # source://cose//lib/cose/key.rb#53
    def cbor_decode(data); end

    # source://cose//lib/cose/key.rb#34
    def deserialize(data); end

    # source://cose//lib/cose/key.rb#21
    def from_pkey(pkey); end

    # source://cose//lib/cose/key.rb#17
    def serialize(pkey); end
  end
end

# source://cose//lib/cose/key/base.rb#7
class COSE::Key::Base
  # @return [Base] a new instance of Base
  #
  # source://cose//lib/cose/key/base.rb#32
  def initialize(kid: T.unsafe(nil), alg: T.unsafe(nil), key_ops: T.unsafe(nil), base_iv: T.unsafe(nil)); end

  # Returns the value of attribute alg.
  #
  # source://cose//lib/cose/key/base.rb#30
  def alg; end

  # Sets the attribute alg
  #
  # @param value the value to set the attribute alg to.
  #
  # source://cose//lib/cose/key/base.rb#30
  def alg=(_arg0); end

  # Returns the value of attribute base_iv.
  #
  # source://cose//lib/cose/key/base.rb#30
  def base_iv; end

  # Sets the attribute base_iv
  #
  # @param value the value to set the attribute base_iv to.
  #
  # source://cose//lib/cose/key/base.rb#30
  def base_iv=(_arg0); end

  # Returns the value of attribute key_ops.
  #
  # source://cose//lib/cose/key/base.rb#30
  def key_ops; end

  # Sets the attribute key_ops
  #
  # @param value the value to set the attribute key_ops to.
  #
  # source://cose//lib/cose/key/base.rb#30
  def key_ops=(_arg0); end

  # Returns the value of attribute kid.
  #
  # source://cose//lib/cose/key/base.rb#30
  def kid; end

  # Sets the attribute kid
  #
  # @param value the value to set the attribute kid to.
  #
  # source://cose//lib/cose/key/base.rb#30
  def kid=(_arg0); end

  # source://cose//lib/cose/key/base.rb#43
  def map; end

  # source://cose//lib/cose/key/base.rb#39
  def serialize; end

  class << self
    # source://cose//lib/cose/key/base.rb#14
    def deserialize(cbor); end

    # source://cose//lib/cose/key/base.rb#18
    def from_map(map); end
  end
end

# source://cose//lib/cose/key/base.rb#10
COSE::Key::Base::LABEL_ALG = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/base.rb#8
COSE::Key::Base::LABEL_BASE_IV = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/base.rb#9
COSE::Key::Base::LABEL_KEY_OPS = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/base.rb#11
COSE::Key::Base::LABEL_KID = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/base.rb#12
COSE::Key::Base::LABEL_KTY = T.let(T.unsafe(nil), Integer)

# https://tools.ietf.org/html/rfc8152#section-13.1
#
# source://cose//lib/cose/key/curve.rb#6
class COSE::Key::Curve < ::Struct
  # Returns the value of attribute id
  #
  # @return [Object] the current value of id
  def id; end

  # Sets the attribute id
  #
  # @param value [Object] the value to set the attribute id to.
  # @return [Object] the newly set value
  def id=(_); end

  # Returns the value of attribute name
  #
  # @return [Object] the current value of name
  def name; end

  # Sets the attribute name
  #
  # @param value [Object] the value to set the attribute name to.
  # @return [Object] the newly set value
  def name=(_); end

  # Returns the value of attribute pkey_name
  #
  # @return [Object] the current value of pkey_name
  def pkey_name; end

  # Sets the attribute pkey_name
  #
  # @param value [Object] the value to set the attribute pkey_name to.
  # @return [Object] the newly set value
  def pkey_name=(_); end

  # source://cose//lib/cose/key/curve.rb#25
  def value; end

  class << self
    def [](*_arg0); end

    # source://cose//lib/cose/key/curve.rb#17
    def by_name(name); end

    # source://cose//lib/cose/key/curve.rb#21
    def by_pkey_name(pkey_name); end

    # source://cose//lib/cose/key/curve.rb#13
    def find(id); end

    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end

    # source://cose//lib/cose/key/curve.rb#9
    def register(id, name, pkey_name); end
  end
end

# source://cose//lib/cose/key/curve_key.rb#8
class COSE::Key::CurveKey < ::COSE::Key::Base
  # @return [CurveKey] a new instance of CurveKey
  #
  # source://cose//lib/cose/key/curve_key.rb#23
  def initialize(crv:, x: T.unsafe(nil), d: T.unsafe(nil), **keyword_arguments); end

  # Returns the value of attribute crv.
  #
  # source://cose//lib/cose/key/curve_key.rb#13
  def crv; end

  # Returns the value of attribute d.
  #
  # source://cose//lib/cose/key/curve_key.rb#13
  def d; end

  # source://cose//lib/cose/key/curve_key.rb#37
  def map; end

  # Returns the value of attribute x.
  #
  # source://cose//lib/cose/key/curve_key.rb#13
  def x; end

  class << self
    # source://cose//lib/cose/key/curve_key.rb#15
    def keyword_arguments_for_initialize(map); end
  end
end

# source://cose//lib/cose/key/curve_key.rb#9
COSE::Key::CurveKey::LABEL_CRV = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/curve_key.rb#11
COSE::Key::CurveKey::LABEL_D = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/curve_key.rb#10
COSE::Key::CurveKey::LABEL_X = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/ec2.rb#9
class COSE::Key::EC2 < ::COSE::Key::CurveKey
  # @return [EC2] a new instance of EC2
  #
  # source://cose//lib/cose/key/ec2.rb#51
  def initialize(y: T.unsafe(nil), **keyword_arguments); end

  # source://cose//lib/cose/key/ec2.rb#109
  def curve; end

  # source://cose//lib/cose/key/ec2.rb#61
  def map; end

  # source://cose//lib/cose/key/ec2.rb#68
  def to_pkey; end

  # Returns the value of attribute y.
  #
  # source://cose//lib/cose/key/ec2.rb#49
  def y; end

  class << self
    # source://cose//lib/cose/key/ec2.rb#14
    def enforce_type(map); end

    # source://cose//lib/cose/key/ec2.rb#20
    def from_pkey(pkey); end

    # source://cose//lib/cose/key/ec2.rb#113
    def keyword_arguments_for_initialize(map); end
  end
end

# source://cose//lib/cose/key/ec2.rb#12
COSE::Key::EC2::KTY_EC2 = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/ec2.rb#10
COSE::Key::EC2::LABEL_Y = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/okp.rb#9
class COSE::Key::OKP < ::COSE::Key::CurveKey
  # source://cose//lib/cose/key/okp.rb#65
  def curve; end

  # source://cose//lib/cose/key/okp.rb#39
  def map; end

  # source://cose//lib/cose/key/okp.rb#43
  def to_pkey; end

  class << self
    # source://cose//lib/cose/key/okp.rb#12
    def enforce_type(map); end

    # source://cose//lib/cose/key/okp.rb#18
    def from_pkey(pkey); end
  end
end

# source://cose//lib/cose/key/okp.rb#10
COSE::Key::OKP::KTY_OKP = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/rsa.rb#8
class COSE::Key::RSA < ::COSE::Key::Base
  # @return [RSA] a new instance of RSA
  #
  # source://cose//lib/cose/key/rsa.rb#50
  def initialize(n:, e:, d: T.unsafe(nil), p: T.unsafe(nil), q: T.unsafe(nil), dp: T.unsafe(nil), dq: T.unsafe(nil), qinv: T.unsafe(nil), **keyword_arguments); end

  # Returns the value of attribute d.
  #
  # source://cose//lib/cose/key/rsa.rb#48
  def d; end

  # Returns the value of attribute dp.
  #
  # source://cose//lib/cose/key/rsa.rb#48
  def dp; end

  # Returns the value of attribute dq.
  #
  # source://cose//lib/cose/key/rsa.rb#48
  def dq; end

  # Returns the value of attribute e.
  #
  # source://cose//lib/cose/key/rsa.rb#48
  def e; end

  # source://cose//lib/cose/key/rsa.rb#76
  def map; end

  # Returns the value of attribute n.
  #
  # source://cose//lib/cose/key/rsa.rb#48
  def n; end

  # Returns the value of attribute p.
  #
  # source://cose//lib/cose/key/rsa.rb#48
  def p; end

  # Returns the value of attribute q.
  #
  # source://cose//lib/cose/key/rsa.rb#48
  def q; end

  # Returns the value of attribute qinv.
  #
  # source://cose//lib/cose/key/rsa.rb#48
  def qinv; end

  # source://cose//lib/cose/key/rsa.rb#90
  def to_pkey; end

  private

  # source://cose//lib/cose/key/rsa.rb#141
  def bn(data); end

  # @return [Boolean]
  #
  # source://cose//lib/cose/key/rsa.rb#137
  def private?; end

  class << self
    # source://cose//lib/cose/key/rsa.rb#20
    def enforce_type(map); end

    # source://cose//lib/cose/key/rsa.rb#26
    def from_pkey(pkey); end

    # source://cose//lib/cose/key/rsa.rb#122
    def keyword_arguments_for_initialize(map); end
  end
end

# source://cose//lib/cose/key/rsa.rb#18
COSE::Key::RSA::KTY_RSA = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/rsa.rb#11
COSE::Key::RSA::LABEL_D = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/rsa.rb#14
COSE::Key::RSA::LABEL_DP = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/rsa.rb#15
COSE::Key::RSA::LABEL_DQ = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/rsa.rb#10
COSE::Key::RSA::LABEL_E = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/rsa.rb#9
COSE::Key::RSA::LABEL_N = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/rsa.rb#12
COSE::Key::RSA::LABEL_P = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/rsa.rb#13
COSE::Key::RSA::LABEL_Q = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/rsa.rb#16
COSE::Key::RSA::LABEL_QINV = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/symmetric.rb#7
class COSE::Key::Symmetric < ::COSE::Key::Base
  # @return [Symmetric] a new instance of Symmetric
  #
  # source://cose//lib/cose/key/symmetric.rb#20
  def initialize(k:, **keyword_arguments); end

  # Returns the value of attribute k.
  #
  # source://cose//lib/cose/key/symmetric.rb#12
  def k; end

  # source://cose//lib/cose/key/symmetric.rb#30
  def map; end

  class << self
    # source://cose//lib/cose/key/symmetric.rb#14
    def enforce_type(map); end

    # source://cose//lib/cose/key/symmetric.rb#34
    def keyword_arguments_for_initialize(map); end
  end
end

# source://cose//lib/cose/key/symmetric.rb#10
COSE::Key::Symmetric::KTY_SYMMETRIC = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key/symmetric.rb#8
COSE::Key::Symmetric::LABEL_K = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/key.rb#12
class COSE::KeyDeserializationError < ::COSE::Error; end

# source://cose//lib/cose/mac.rb#7
class COSE::Mac < ::COSE::Mac0
  # @return [Mac] a new instance of Mac
  #
  # source://cose//lib/cose/mac.rb#20
  def initialize(recipients:, **keyword_arguments); end

  # Returns the value of attribute recipients.
  #
  # source://cose//lib/cose/mac.rb#10
  def recipients; end

  # source://cose//lib/cose/mac.rb#26
  def verify(key, external_aad = T.unsafe(nil)); end

  private

  # source://cose//lib/cose/mac.rb#38
  def context; end

  class << self
    # source://cose//lib/cose/mac.rb#12
    def keyword_arguments_for_initialize(decoded); end

    # source://cose//lib/cose/mac.rb#16
    def tag; end
  end
end

# source://cose//lib/cose/mac0.rb#8
class COSE::Mac0 < ::COSE::SecurityMessage
  # @return [Mac0] a new instance of Mac0
  #
  # source://cose//lib/cose/mac0.rb#21
  def initialize(payload:, tag:, **keyword_arguments); end

  # Returns the value of attribute payload.
  #
  # source://cose//lib/cose/mac0.rb#11
  def payload; end

  # Returns the value of attribute tag.
  #
  # source://cose//lib/cose/mac0.rb#11
  def tag; end

  # source://cose//lib/cose/mac0.rb#28
  def verify(key, external_aad = T.unsafe(nil)); end

  private

  # source://cose//lib/cose/mac0.rb#38
  def context; end

  # source://cose//lib/cose/mac0.rb#34
  def data(external_aad = T.unsafe(nil)); end

  class << self
    # source://cose//lib/cose/mac0.rb#13
    def keyword_arguments_for_initialize(decoded); end

    # source://cose//lib/cose/mac0.rb#17
    def tag; end
  end
end

# source://cose//lib/cose/mac0.rb#9
COSE::Mac0::CONTEXT = T.let(T.unsafe(nil), String)

# source://cose//lib/cose/mac.rb#8
COSE::Mac::CONTEXT = T.let(T.unsafe(nil), String)

# source://cose//lib/cose/key.rb#13
class COSE::MalformedKeyError < ::COSE::KeyDeserializationError; end

# source://cose//lib/cose/recipient.rb#6
class COSE::Recipient < ::COSE::SecurityMessage
  # @return [Recipient] a new instance of Recipient
  #
  # source://cose//lib/cose/recipient.rb#19
  def initialize(ciphertext:, recipients: T.unsafe(nil), **keyword_arguments); end

  # Returns the value of attribute ciphertext.
  #
  # source://cose//lib/cose/recipient.rb#7
  def ciphertext; end

  # Returns the value of attribute recipients.
  #
  # source://cose//lib/cose/recipient.rb#7
  def recipients; end

  class << self
    # source://cose//lib/cose/recipient.rb#9
    def keyword_arguments_for_initialize(decoded); end
  end
end

# source://cose//lib/cose/security_message/headers.rb#4
class COSE::SecurityMessage
  # @return [SecurityMessage] a new instance of SecurityMessage
  #
  # source://cose//lib/cose/security_message.rb#44
  def initialize(protected_headers:, unprotected_headers:); end

  # source://cose//lib/cose/security_message.rb#49
  def algorithm; end

  # source://cose//lib/cose/security_message.rb#53
  def headers; end

  # Returns the value of attribute protected_headers.
  #
  # source://cose//lib/cose/security_message.rb#12
  def protected_headers; end

  # Returns the value of attribute unprotected_headers.
  #
  # source://cose//lib/cose/security_message.rb#12
  def unprotected_headers; end

  private

  # source://cose//lib/cose/security_message.rb#59
  def serialized_map(map); end

  # source://cose//lib/cose/security_message.rb#67
  def zero_length_bin_string; end

  class << self
    # source://cose//lib/cose/security_message.rb#14
    def deserialize(cbor); end

    # source://cose//lib/cose/security_message.rb#36
    def deserialize_headers(data); end

    # source://cose//lib/cose/security_message.rb#28
    def from_array(array); end
  end
end

# source://cose//lib/cose/security_message/headers.rb#5
class COSE::SecurityMessage::Headers
  # @return [Headers] a new instance of Headers
  #
  # source://cose//lib/cose/security_message/headers.rb#11
  def initialize(protected_bucket, unprotected_bucket); end

  # source://cose//lib/cose/security_message/headers.rb#16
  def alg; end

  # source://cose//lib/cose/security_message/headers.rb#20
  def kid; end

  # Returns the value of attribute protected_bucket.
  #
  # source://cose//lib/cose/security_message/headers.rb#9
  def protected_bucket; end

  # Returns the value of attribute unprotected_bucket.
  #
  # source://cose//lib/cose/security_message/headers.rb#9
  def unprotected_bucket; end

  private

  # source://cose//lib/cose/security_message/headers.rb#26
  def header(label); end
end

# source://cose//lib/cose/security_message/headers.rb#6
COSE::SecurityMessage::Headers::HEADER_LABEL_ALG = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/security_message/headers.rb#7
COSE::SecurityMessage::Headers::HEADER_LABEL_KID = T.let(T.unsafe(nil), Integer)

# source://cose//lib/cose/security_message.rb#10
COSE::SecurityMessage::ZERO_LENGTH_BIN_STRING = T.let(T.unsafe(nil), String)

# source://cose//lib/cose/sign.rb#9
class COSE::Sign < ::COSE::SecurityMessage
  # @return [Sign] a new instance of Sign
  #
  # source://cose//lib/cose/sign.rb#22
  def initialize(payload:, signatures:, **keyword_arguments); end

  # Returns the value of attribute payload.
  #
  # source://cose//lib/cose/sign.rb#12
  def payload; end

  # Returns the value of attribute signatures.
  #
  # source://cose//lib/cose/sign.rb#12
  def signatures; end

  # source://cose//lib/cose/sign.rb#29
  def verify(key, external_aad = T.unsafe(nil)); end

  private

  # source://cose//lib/cose/sign.rb#41
  def verification_data(signature, external_aad = T.unsafe(nil)); end

  class << self
    # source://cose//lib/cose/sign.rb#14
    def keyword_arguments_for_initialize(decoded); end

    # source://cose//lib/cose/sign.rb#18
    def tag; end
  end
end

# source://cose//lib/cose/sign1.rb#8
class COSE::Sign1 < ::COSE::SecurityMessage
  # @return [Sign1] a new instance of Sign1
  #
  # source://cose//lib/cose/sign1.rb#21
  def initialize(payload:, signature:, **keyword_arguments); end

  # Returns the value of attribute payload.
  #
  # source://cose//lib/cose/sign1.rb#11
  def payload; end

  # Returns the value of attribute signature.
  #
  # source://cose//lib/cose/sign1.rb#11
  def signature; end

  # source://cose//lib/cose/sign1.rb#28
  def verify(key, external_aad = T.unsafe(nil)); end

  private

  # source://cose//lib/cose/sign1.rb#38
  def verification_data(external_aad = T.unsafe(nil)); end

  class << self
    # source://cose//lib/cose/sign1.rb#13
    def keyword_arguments_for_initialize(decoded); end

    # source://cose//lib/cose/sign1.rb#17
    def tag; end
  end
end

# source://cose//lib/cose/sign1.rb#9
COSE::Sign1::CONTEXT = T.let(T.unsafe(nil), String)

# source://cose//lib/cose/sign.rb#10
COSE::Sign::CONTEXT = T.let(T.unsafe(nil), String)

# source://cose//lib/cose/signature.rb#6
class COSE::Signature < ::COSE::SecurityMessage
  # @return [Signature] a new instance of Signature
  #
  # source://cose//lib/cose/signature.rb#13
  def initialize(signature:, **keyword_arguments); end

  # Returns the value of attribute signature.
  #
  # source://cose//lib/cose/signature.rb#7
  def signature; end

  class << self
    # source://cose//lib/cose/signature.rb#9
    def keyword_arguments_for_initialize(decoded); end
  end
end

# source://cose//lib/cose/key.rb#14
class COSE::UnknownKeyType < ::COSE::KeyDeserializationError; end

# source://cose//lib/cose/version.rb#4
COSE::VERSION = T.let(T.unsafe(nil), String)