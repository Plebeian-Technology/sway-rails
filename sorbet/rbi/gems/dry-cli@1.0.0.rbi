# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `dry-cli` gem.
# Please instead update this file by running `bin/tapioca gem dry-cli`.

# Dry
#
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli.rb#6
module Dry
  class << self
    # Create a new instance
    #
    # @param registry_or_command [Dry::CLI::Registry, Dry::CLI::Command] a registry or singular command
    # @param &block [Block] a configuration block for registry
    # @return [Dry::CLI] the new instance
    # @since 0.4.0
    #
    # source://dry-cli//lib/dry/cli.rb#221
    def CLI(registry_or_command = T.unsafe(nil), &block); end
  end
end

# General purpose Command Line Interface (CLI) framework for Ruby
#
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli.rb#10
class Dry::CLI
  # Create a new instance
  #
  # @param command_or_registry [Dry::CLI::Registry, Dry::CLI::Command] a registry or singular command
  # @param &block [Block] a configuration block for registry
  # @return [Dry::CLI] the new instance
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli.rb#45
  def initialize(command_or_registry = T.unsafe(nil), &block); end

  # Invoke the CLI
  #
  # @param arguments [Array<string>] the command line arguments (defaults to `ARGV`)
  # @param out [IO] the standard output (defaults to `$stdout`)
  # @param err [IO] the error output (defaults to `$stderr`)
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli.rb#63
  def call(arguments: T.unsafe(nil), out: T.unsafe(nil), err: T.unsafe(nil)); end

  private

  # Generates registry in runtime
  #
  # @api private
  # @param &block [Block] configuration for the registry
  # @return [Module] module extended with registry abilities and configured with a block
  # @since 0.4.0
  #
  # source://dry-cli//lib/dry/cli.rb#202
  def anonymous_registry(&block); end

  # @api private
  # @since 0.6.0
  #
  # source://dry-cli//lib/dry/cli.rb#146
  def build_command(command); end

  # Check if command
  #
  # @api private
  # @param command [Object] the command to check
  # @return [TrueClass, FalseClass] true if instance of `Dry::CLI::Command`
  # @see .command?
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli.rb#190
  def command?(command); end

  # @api private
  # @since 0.6.0
  #
  # source://dry-cli//lib/dry/cli.rb#88
  def err; end

  # @api private
  # @since 0.6.0
  #
  # source://dry-cli//lib/dry/cli.rb#159
  def error(result); end

  # @api private
  # @since 0.6.0
  #
  # source://dry-cli//lib/dry/cli.rb#152
  def help(command, prog_name); end

  # @api private
  # @since 0.6.0
  #
  # source://dry-cli//lib/dry/cli.rb#80
  def kommand; end

  # @api private
  # @since 0.6.0
  #
  # source://dry-cli//lib/dry/cli.rb#84
  def out; end

  # Parse arguments for a command.
  #
  # It may exit in case of error, or in case of help.
  #
  # @api private
  # @param result [Dry::CLI::CommandRegistry::LookupResult]
  # @param out [IO] sta output
  # @return [Array<Dry:CLI::Command, Array>] returns an array where the
  #   first element is a command and the second one is the list of arguments
  # @since 0.6.0
  #
  # source://dry-cli//lib/dry/cli.rb#132
  def parse(command, arguments, names); end

  # Invoke the CLI if singular command passed
  #
  # @api private
  # @param arguments [Array<string>] the command line arguments
  # @param out [IO] the standard output (defaults to `$stdout`)
  # @since 0.6.0
  #
  # source://dry-cli//lib/dry/cli.rb#97
  def perform_command(arguments); end

  # Invoke the CLI if registry passed
  #
  # @api private
  # @param arguments [Array<string>] the command line arguments
  # @param out [IO] the standard output (defaults to `$stdout`)
  # @since 0.6.0
  #
  # source://dry-cli//lib/dry/cli.rb#109
  def perform_registry(arguments); end

  # @api private
  # @since 0.6.0
  #
  # source://dry-cli//lib/dry/cli.rb#76
  def registry; end

  # Handles Exit codes for signals
  # Fatal error signal "n". Say 130 = 128 + 2 (SIGINT) or 137 = 128 + 9 (SIGKILL)
  #
  # @api private
  # @since 0.7.0
  #
  # source://dry-cli//lib/dry/cli.rb#176
  def signal_exception(exception); end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli.rb#166
  def usage(result); end

  class << self
    # Check if command
    #
    # @api private
    # @param command [Object] the command to check
    # @return [TrueClass, FalseClass] true if instance of `Dry::CLI::Command`
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli.rb#28
    def command?(command); end
  end
end

# Command line argument
#
# @api private
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/option.rb#123
class Dry::CLI::Argument < ::Dry::CLI::Option
  # @api private
  # @return [Boolean]
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#126
  def argument?; end
end

# Command banner
#
# @api private
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/banner.rb#11
module Dry::CLI::Banner
  class << self
    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/banner.rb#85
    def arguments(command); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/banner.rb#128
    def build_subcommands_list(subcommands); end

    # Prints command banner
    #
    # @api private
    # @param command [Dry::CLI::Command] the command
    # @param out [IO] standard output
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/banner.rb#19
    def call(command, name); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/banner.rb#71
    def command_arguments(command); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/banner.rb#57
    def command_description(command); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/banner.rb#49
    def command_examples(command, name); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/banner.rb#33
    def command_name(name); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/banner.rb#39
    def command_name_and_arguments(command, name); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/banner.rb#79
    def command_options(command); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/banner.rb#63
    def command_subcommands(command); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/banner.rb#98
    def extended_command_arguments(command); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/banner.rb#107
    def extended_command_options(command); end
  end
end

# Base class for commands
#
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/command.rb#11
class Dry::CLI::Command
  extend ::Forwardable

  # source://forwardable/1.3.3/forwardable.rb#231
  def arguments(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def default_params(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def description(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def examples(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def optional_arguments(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def options(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def params(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def required_arguments(*args, **_arg1, &block); end

  # source://forwardable/1.3.3/forwardable.rb#231
  def subcommands(*args, **_arg1, &block); end

  class << self
    # Specify an argument
    #
    # @example Optional argument
    #   require "dry/cli"
    #
    #   class Hello < Dry::CLI::Command
    #   argument :name
    #
    #   def call(name: nil, **)
    #   if name.nil?
    #   puts "Hello, stranger"
    #   else
    #   puts "Hello, #{name}"
    #   end
    #   end
    #   end
    #
    #   # $ foo hello
    #   #   Hello, stranger
    #
    #   # $ foo hello Luca
    #   #   Hello, Luca
    # @example Required argument
    #   require "dry/cli"
    #
    #   class Hello < Dry::CLI::Command
    #   argument :name, required: true
    #
    #   def call(name:, **)
    #   puts "Hello, #{name}"
    #   end
    #   end
    #
    #   # $ foo hello Luca
    #   #   Hello, Luca
    #
    #   # $ foo hello
    #   #   ERROR: "foo hello" was called with no arguments
    #   #   Usage: "foo hello NAME"
    # @example Multiple arguments
    #   require "dry/cli"
    #
    #   module Generate
    #   class Action < Dry::CLI::Command
    #   argument :app,    required: true
    #   argument :action, required: true
    #
    #   def call(app:, action:, **)
    #   puts "Generating action: #{action} for app: #{app}"
    #   end
    #   end
    #   end
    #
    #   # $ foo generate action web home
    #   #   Generating action: home for app: web
    #
    #   # $ foo generate action
    #   #   ERROR: "foo generate action" was called with no arguments
    #   #   Usage: "foo generate action APP ACTION"
    # @example Description
    #   require "dry/cli"
    #
    #   class Hello < Dry::CLI::Command
    #   argument :name, desc: "The name of the person to greet"
    #
    #   def call(name: nil, **)
    #   # ...
    #   end
    #   end
    #
    #   # $ foo hello --help
    #   #   Command:
    #   #     foo hello
    #   #
    #   #   Usage:
    #   #     foo hello [NAME]
    #   #
    #   #   Arguments:
    #   #     NAME                # The name of the person to greet
    #   #
    #   #   Options:
    #   #     --help, -h          # Print this help
    # @param name [Symbol] the argument name
    # @param options [Hash] a set of options
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/command.rb#201
    def argument(name, options = T.unsafe(nil)); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/command.rb#329
    def default_params; end

    # Set the description of the command
    #
    # @example
    #   require "dry/cli"
    #
    #   class Echo < Dry::CLI::Command
    #   desc "Prints given input"
    #
    #   def call(*)
    #   # ...
    #   end
    #   end
    # @param description [String] the description
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/command.rb#71
    def desc(description); end

    # Describe the usage of the command
    #
    # @example
    #   require "dry/cli"
    #
    #   class Server < Dry::CLI::Command
    #   example [
    #   "                    # Basic usage (it uses the bundled server engine)",
    #   "--server=webrick    # Force `webrick` server engine",
    #   "--host=0.0.0.0      # Bind to a host",
    #   "--port=2306         # Bind to a port",
    #   "--no-code-reloading # Disable code reloading"
    #   ]
    #
    #   def call(*)
    #   # ...
    #   end
    #   end
    #
    #   # $ foo server --help
    #   #   # ...
    #   #
    #   #   Examples:
    #   #     foo server                     # Basic usage (it uses the bundled server engine)
    #   #     foo server --server=webrick    # Force `webrick` server engine
    #   #     foo server --host=0.0.0.0      # Bind to a host
    #   #     foo server --port=2306         # Bind to a port
    #   #     foo server --no-code-reloading # Disable code reloading
    # @param examples [Array<String>] one or more examples
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/command.rb#107
    def example(*examples); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/command.rb#14
    def inherited(base); end

    # Command line option (aka optional argument)
    #
    # @example Basic usage
    #   require "dry/cli"
    #
    #   class Console < Dry::CLI::Command
    #   option :engine
    #
    #   def call(engine: nil, **)
    #   puts "starting console (engine: #{engine || :irb})"
    #   end
    #   end
    #
    #   # $ foo console
    #   # starting console (engine: irb)
    #
    #   # $ foo console --engine=pry
    #   # starting console (engine: pry)
    # @example List values
    #   require "dry/cli"
    #
    #   class Console < Dry::CLI::Command
    #   option :engine, values: %w(irb pry ripl)
    #
    #   def call(engine: nil, **)
    #   puts "starting console (engine: #{engine || :irb})"
    #   end
    #   end
    #
    #   # $ foo console
    #   # starting console (engine: irb)
    #
    #   # $ foo console --engine=pry
    #   # starting console (engine: pry)
    #
    #   # $ foo console --engine=foo
    #   # ERROR: Invalid param provided
    # @example Description
    #   require "dry/cli"
    #
    #   class Console < Dry::CLI::Command
    #   option :engine, desc: "Force a console engine"
    #
    #   def call(engine: nil, **)
    #   # ...
    #   end
    #   end
    #
    #   # $ foo console --help
    #   # # ...
    #   #
    #   # Options:
    #   #   --engine=VALUE                  # Force a console engine: (irb/pry/ripl)
    #   #   --help, -h                      # Print this help
    # @example Boolean
    #   require "dry/cli"
    #
    #   class Server < Dry::CLI::Command
    #   option :code_reloading, type: :boolean, default: true
    #
    #   def call(code_reloading:, **)
    #   puts "staring server (code reloading: #{code_reloading})"
    #   end
    #   end
    #
    #   # $ foo server
    #   # starting server (code reloading: true)
    #
    #   # $ foo server --no-code-reloading
    #   # starting server (code reloading: false)
    #
    #   # $ foo server --help
    #   # # ...
    #   #
    #   # Options:
    #   #   --[no]-code-reloading
    # @example Aliases
    #   require "dry/cli"
    #
    #   class Server < Dry::CLI::Command
    #   option :port, aliases: ["-p"]
    #
    #   def call(options)
    #   puts "staring server (port: #{options.fetch(:port, 2300)})"
    #   end
    #   end
    #
    #   # $ foo server
    #   # starting server (port: 2300)
    #
    #   # $ foo server --port=2306
    #   # starting server (port: 2306)
    #
    #   # $ foo server -p 2306
    #   # starting server (port: 2306)
    #
    #   # $ foo server --help
    #   # # ...
    #   #
    #   # Options:
    #   #   --port=VALUE, -p VALUE
    # @param name [Symbol] the param name
    # @param options [Hash] a set of options
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/command.rb#315
    def option(name, options = T.unsafe(nil)); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/command.rb#343
    def optional_arguments; end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/command.rb#321
    def params; end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/command.rb#337
    def required_arguments; end

    # @api private
    # @since 0.7.0
    #
    # source://dry-cli//lib/dry/cli/command.rb#349
    def subcommands; end

    # @api private
    # @since 0.7.0
    #
    # source://dry-cli//lib/dry/cli/command.rb#363
    def superclass_arguments; end

    # @api private
    # @since 0.7.0
    #
    # source://dry-cli//lib/dry/cli/command.rb#369
    def superclass_options; end

    # @api private
    # @since 0.7.0
    #
    # source://dry-cli//lib/dry/cli/command.rb#355
    def superclass_variable_dup(var); end
  end
end

# @api private
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/command.rb#29
module Dry::CLI::Command::ClassMethods
  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command.rb#40
  def arguments; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command.rb#32
  def description; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command.rb#36
  def examples; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command.rb#44
  def options; end

  # @api private
  # @since 0.7.0
  #
  # source://dry-cli//lib/dry/cli/command.rb#48
  def subcommands; end

  # @api private
  # @since 0.7.0
  #
  # source://dry-cli//lib/dry/cli/command.rb#52
  def subcommands=(_arg0); end
end

# Command registry
#
# @api private
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/command_registry.rb#11
class Dry::CLI::CommandRegistry
  # @api private
  # @return [CommandRegistry] a new instance of CommandRegistry
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#14
  def initialize; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#41
  def get(arguments); end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#21
  def set(name, command, aliases); end
end

# Callbacks chain
#
# @api private
# @since 0.4.0
#
# source://dry-cli//lib/dry/cli/command_registry.rb#226
class Dry::CLI::CommandRegistry::Chain
  # @api private
  # @return [Chain] a new instance of Chain
  # @since 0.4.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#233
  def initialize; end

  # @api private
  # @since 0.4.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#239
  def append(&callback); end

  # @api private
  # @since 0.4.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#229
  def chain; end

  # @api private
  # @since 0.4.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#245
  def run(context, *args); end
end

# Result of a registry lookup
#
# @api private
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/command_registry.rb#173
class Dry::CLI::CommandRegistry::LookupResult
  # @api private
  # @return [LookupResult] a new instance of LookupResult
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#184
  def initialize(node, arguments, names, found); end

  # @api private
  # @since 0.2.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#217
  def after_callbacks; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#180
  def arguments; end

  # @api private
  # @since 0.2.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#211
  def before_callbacks; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#199
  def children; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#205
  def command; end

  # @api private
  # @return [Boolean]
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#193
  def found?; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#176
  def names; end
end

# Node of the registry
#
# @api private
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/command_registry.rb#80
class Dry::CLI::CommandRegistry::Node
  # @api private
  # @return [Node] a new instance of Node
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#107
  def initialize(parent = T.unsafe(nil)); end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#103
  def after_callbacks; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#144
  def alias!(key, child); end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#91
  def aliases; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#150
  def aliases!(aliases); end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#99
  def before_callbacks; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#87
  def children; end

  # @api private
  # @return [Boolean]
  # @since 0.7.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#164
  def children?; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#95
  def command; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#131
  def leaf!(command); end

  # @api private
  # @return [Boolean]
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#158
  def leaf?; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#125
  def lookup(token); end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#83
  def parent; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#119
  def put(parent, key); end

  # @api private
  # @since 0.7.0
  #
  # source://dry-cli//lib/dry/cli/command_registry.rb#137
  def subcommands!(command); end
end

# @since 0.2.0
#
# source://dry-cli//lib/dry/cli/errors.rb#9
class Dry::CLI::Error < ::StandardError; end

# @api private
# @since 0.5.0
#
# source://dry-cli//lib/dry/cli/inflector.rb#7
module Dry::CLI::Inflector
  class << self
    # @api private
    # @since 0.5.0
    #
    # source://dry-cli//lib/dry/cli/inflector.rb#10
    def dasherize(input); end
  end
end

# @since 0.2.0
#
# source://dry-cli//lib/dry/cli/errors.rb#22
class Dry::CLI::InvalidCallbackError < ::Dry::CLI::Error
  # @api private
  # @return [InvalidCallbackError] a new instance of InvalidCallbackError
  # @since 0.2.0
  #
  # source://dry-cli//lib/dry/cli/errors.rb#25
  def initialize(callback); end
end

# Command line option
#
# @api private
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/option.rb#9
class Dry::CLI::Option
  # @api private
  # @return [Option] a new instance of Option
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#20
  def initialize(name, options = T.unsafe(nil)); end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#109
  def alias_names; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#27
  def aliases; end

  # @api private
  # @return [Boolean]
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#82
  def argument?; end

  # @api private
  # @return [Boolean]
  # @since 0.3.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#64
  def array?; end

  # @api private
  # @return [Boolean]
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#58
  def boolean?; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#70
  def default; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#33
  def desc; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#76
  def description_name; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#12
  def name; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#16
  def options; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#89
  def parser_options; end

  # @api private
  # @return [Boolean]
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#40
  def required?; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#46
  def type; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/option.rb#52
  def values; end
end

# Parse command line arguments and options
#
# @api private
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/parser.rb#12
module Dry::CLI::Parser
  class << self
    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/parser.rb#16
    def call(command, arguments, prog_name); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/parser.rb#72
    def match_arguments(command_arguments, arguments); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/parser.rb#42
    def parse_required_params(command, arguments, prog_name, parsed_options); end
  end
end

# @api private
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/parser.rb#89
class Dry::CLI::Parser::Result
  # @api private
  # @return [Result] a new instance of Result
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/parser.rb#118
  def initialize(arguments: T.unsafe(nil), error: T.unsafe(nil), help: T.unsafe(nil)); end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/parser.rb#110
  def arguments; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/parser.rb#114
  def error; end

  # @api private
  # @return [Boolean]
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/parser.rb#126
  def error?; end

  # @api private
  # @return [Boolean]
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/parser.rb#132
  def help?; end

  class << self
    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/parser.rb#104
    def failure(error = T.unsafe(nil)); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/parser.rb#92
    def help; end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/parser.rb#98
    def success(arguments = T.unsafe(nil)); end
  end
end

# Program name
#
# @api private
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/program_name.rb#9
module Dry::CLI::ProgramName
  class << self
    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/program_name.rb#16
    def call(names = T.unsafe(nil), program_name: T.unsafe(nil)); end
  end
end

# @api private
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/program_name.rb#12
Dry::CLI::ProgramName::SEPARATOR = T.let(T.unsafe(nil), String)

# Registry mixin
#
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/registry.rb#10
module Dry::CLI::Registry
  # Register an after callback.
  #
  # @example Register an object as callback
  #   require "dry/cli"
  #
  #   module Callbacks
  #   class World
  #   def call(*)
  #   puts "world"
  #   end
  #   end
  #   end
  #
  #   module Foo
  #   module Commands
  #   extend Dry::CLI::Registry
  #
  #   class Hello < Dry::CLI::Command
  #   def call(*)
  #   puts "hello"
  #   end
  #   end
  #
  #   register "hello", Hello
  #   after "hello", Callbacks::World.new
  #   end
  #   end
  # @example
  #   require "dry/cli"
  #
  #   module Foo
  #   module Commands
  #   extend Dry::CLI::Registry
  #
  #   class Hello < Dry::CLI::Command
  #   def call(*)
  #   puts "hello"
  #   end
  #   end
  #
  #   register "hello", Hello
  #   after "hello", -> { puts "world" }
  #   end
  #   end
  # @example Register a class as callback
  #   require "dry/cli"
  #
  #   module Callbacks
  #   class World
  #   def call(*)
  #   puts "world"
  #   end
  #   end
  #   end
  #
  #   module Foo
  #   module Commands
  #   extend Dry::CLI::Registry
  #
  #   class Hello < Dry::CLI::Command
  #   def call(*)
  #   puts "hello"
  #   end
  #   end
  #
  #   register "hello", Hello
  #   after "hello", Callbacks::World
  #   end
  #   end
  # @param callback [Class, #call] the callback object. If a class is given,
  #   it MUST respond to `#call`.
  # @param command_name [String] the name used for command registration
  # @param blk [Proc] the callback espressed as a block
  # @raise [Dry::CLI::UnknownCommandError] if the command isn't registered
  # @raise [Dry::CLI::InvalidCallbackError] if the given callback doesn't
  #   implement the required interface
  # @since 0.2.0
  #
  # source://dry-cli//lib/dry/cli/registry.rb#261
  def after(command_name, callback = T.unsafe(nil), &blk); end

  # Register a before callback.
  #
  # @example Register an object as callback
  #   require "dry/cli"
  #
  #   module Callbacks
  #   class Hello
  #   def call(*)
  #   puts "world"
  #   end
  #   end
  #   end
  #
  #   module Foo
  #   module Commands
  #   extend Dry::CLI::Registry
  #
  #   class Hello < Dry::CLI::Command
  #   def call(*)
  #   puts "I'm about to say.."
  #   end
  #   end
  #
  #   register "hello", Hello
  #   before "hello", Callbacks::Hello.new
  #   end
  #   end
  # @example
  #   require "dry/cli"
  #
  #   module Foo
  #   module Commands
  #   extend Dry::CLI::Registry
  #
  #   class Hello < Dry::CLI::Command
  #   def call(*)
  #   puts "hello"
  #   end
  #   end
  #
  #   register "hello", Hello
  #   before "hello", -> { puts "I'm about to say.." }
  #   end
  #   end
  # @example Register a class as callback
  #   require "dry/cli"
  #
  #   module Callbacks
  #   class Hello
  #   def call(*)
  #   puts "world"
  #   end
  #   end
  #   end
  #
  #   module Foo
  #   module Commands
  #   extend Dry::CLI::Registry
  #
  #   class Hello < Dry::CLI::Command
  #   def call(*)
  #   puts "I'm about to say.."
  #   end
  #   end
  #
  #   register "hello", Hello
  #   before "hello", Callbacks::Hello
  #   end
  #   end
  # @param callback [Class, #call] the callback object. If a class is given,
  #   it MUST respond to `#call`.
  # @param command_name [String] the name used for command registration
  # @param blk [Proc] the callback espressed as a block
  # @raise [Dry::CLI::UnknownCommandError] if the command isn't registered
  # @raise [Dry::CLI::InvalidCallbackError] if the given callback doesn't
  #   implement the required interface
  # @since 0.2.0
  #
  # source://dry-cli//lib/dry/cli/registry.rb#173
  def before(command_name, callback = T.unsafe(nil), &blk); end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/registry.rb#269
  def get(arguments); end

  # Register a command
  #
  # @example Register a command
  #   require "dry/cli"
  #
  #   module Foo
  #   module Commands
  #   extend Dry::CLI::Registry
  #
  #   class Hello < Dry::CLI::Command
  #   end
  #
  #   register "hi", Hello
  #   end
  #   end
  # @example Register a group of commands
  #   require "dry/cli"
  #
  #   module Foo
  #   module Commands
  #   extend Dry::CLI::Registry
  #
  #   module Generate
  #   class App < Dry::CLI::Command
  #   end
  #
  #   class Action < Dry::CLI::Command
  #   end
  #   end
  #
  #   register "generate", aliases: ["g"] do |prefix|
  #   prefix.register "app",    Generate::App
  #   prefix.register "action", Generate::Action
  #   end
  #   end
  #   end
  # @example Register a command with aliases
  #   require "dry/cli"
  #
  #   module Foo
  #   module Commands
  #   extend Dry::CLI::Registry
  #
  #   class Hello < Dry::CLI::Command
  #   end
  #
  #   register "hello", Hello, aliases: ["hi", "ciao"]
  #   end
  #   end
  # @param options [Hash] a set of options
  # @param command [NilClass, Dry::CLI::Command] the optional command
  # @param name [String] the command name
  # @param aliases [Array<String>] an optional list of aliases
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/registry.rb#78
  def register(name, command = T.unsafe(nil), aliases: T.unsafe(nil), &block); end

  private

  # @api private
  # @since 0.2.0
  #
  # source://dry-cli//lib/dry/cli/registry.rb#288
  def _callback(callback, blk); end

  # @api private
  # @since 0.2.0
  #
  # source://dry-cli//lib/dry/cli/registry.rb#279
  def command(command_name); end

  class << self
    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/registry.rb#13
    def extended(base); end
  end
end

# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/registry.rb#275
Dry::CLI::Registry::COMMAND_NAME_SEPARATOR = T.let(T.unsafe(nil), String)

# Command name prefix
#
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/registry.rb#308
class Dry::CLI::Registry::Prefix
  # @api private
  # @return [Prefix] a new instance of Prefix
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/registry.rb#311
  def initialize(registry, prefix, aliases); end

  # @see Dry::CLI::Registry#register
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/registry.rb#321
  def register(name, command, aliases: T.unsafe(nil)); end

  private

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/registry.rb#334
  def prefix; end

  # @api private
  # @since 0.1.0
  #
  # source://dry-cli//lib/dry/cli/registry.rb#330
  def registry; end
end

# @since 0.2.1
#
# source://dry-cli//lib/dry/cli/errors.rb#13
class Dry::CLI::UnknownCommandError < ::Dry::CLI::Error
  # @api private
  # @return [UnknownCommandError] a new instance of UnknownCommandError
  # @since 0.2.1
  #
  # source://dry-cli//lib/dry/cli/errors.rb#16
  def initialize(command_name); end
end

# Command(s) usage
#
# @api private
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/usage.rb#11
module Dry::CLI::Usage
  class << self
    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/usage.rb#52
    def arguments(command); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/usage.rb#19
    def call(result); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/usage.rb#89
    def command_name(result, name); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/usage.rb#83
    def commands(result); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/usage.rb#31
    def commands_and_arguments(result); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/usage.rb#67
    def description(command); end

    # @api private
    # @since 0.1.0
    #
    # source://dry-cli//lib/dry/cli/usage.rb#75
    def justify(string, padding, usage); end
  end
end

# @api private
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/usage.rb#15
Dry::CLI::Usage::ROOT_COMMAND_WITH_SUBCOMMANDS_BANNER = T.let(T.unsafe(nil), String)

# @api private
# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/usage.rb#14
Dry::CLI::Usage::SUBCOMMAND_BANNER = T.let(T.unsafe(nil), String)

# @since 0.1.0
#
# source://dry-cli//lib/dry/cli/version.rb#6
Dry::CLI::VERSION = T.let(T.unsafe(nil), String)
