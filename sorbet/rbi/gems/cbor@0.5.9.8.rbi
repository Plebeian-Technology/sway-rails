# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `cbor` gem.
# Please instead update this file by running `bin/tapioca gem cbor`.

# source://cbor//lib/cbor/version.rb#1
module CBOR
  private

  def decode(*_arg0); end
  def dump(*_arg0); end
  def encode(*_arg0); end
  def load(*_arg0); end
  def pack(*_arg0); end
  def unpack(*_arg0); end

  class << self
    def decode(*_arg0); end
    def dump(*_arg0); end
    def encode(*_arg0); end
    def load(*_arg0); end
    def pack(*_arg0); end
    def unpack(*_arg0); end
  end
end

class CBOR::Buffer
  def initialize(*_arg0); end

  def <<(_arg0); end
  def clear; end
  def close; end
  def empty?; end
  def flush; end
  def io; end
  def read(*_arg0); end
  def read_all(*_arg0); end
  def size; end
  def skip(_arg0); end
  def skip_all(_arg0); end
  def to_a; end
  def to_s; end
  def to_str; end
  def write(_arg0); end
  def write_to(_arg0); end
end

class CBOR::MalformedFormatError < ::CBOR::UnpackError; end

class CBOR::Packer
  def initialize(*_arg0); end

  def buffer; end
  def clear; end
  def empty?; end
  def flush; end
  def pack(_arg0); end
  def size; end
  def to_a; end
  def to_s; end
  def to_str; end
  def write(_arg0); end
  def write_array_header(_arg0); end
  def write_map_header(_arg0); end
  def write_nil; end
  def write_to(_arg0); end
end

class CBOR::Simple < ::Struct
  def to_cbor(*_arg0); end
  def value; end
  def value=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

class CBOR::StackError < ::CBOR::UnpackError; end

class CBOR::Tagged < ::Struct
  def tag; end
  def tag=(_); end
  def to_cbor(*_arg0); end
  def value; end
  def value=(_); end

  class << self
    def [](*_arg0); end
    def inspect; end
    def keyword_init?; end
    def members; end
    def new(*_arg0); end
  end
end

class CBOR::TypeError < ::StandardError; end
class CBOR::UnpackError < ::StandardError; end

class CBOR::Unpacker
  def initialize(*_arg0); end

  def buffer; end
  def each; end
  def feed(_arg0); end
  def feed_each(_arg0); end
  def read; end
  def read_array_header; end
  def read_map_header; end
  def reset; end
  def skip; end
  def skip_nil; end
  def unpack; end
end

# source://cbor//lib/cbor/version.rb#2
CBOR::VERSION = T.let(T.unsafe(nil), String)
