require "xdr/version"
require "active_model"
require "active_support/dependencies/autoload"
require "active_support/core_ext/object/blank"
require "active_support/core_ext/module/attribute_accessors"
require "active_support/core_ext/class/attribute.rb"
require "active_support/logger"
require "active_support/ordered_hash"

module XDR
  extend ActiveSupport::Autoload

  autoload :Primitives
  autoload :RPC
  autoload :DSL

  # Compound Type
  autoload :Struct
  autoload :Union
  autoload :Enum

  # Primitive Types
  autoload :Option
  autoload :Int
  autoload :UnsignedInt
  autoload :Hyper
  autoload :UnsignedHyper
  autoload :Bool
  autoload :Opaque
  autoload :VarOpaque
  autoload :VarArray
  autoload :String

  # Validators
  autoload :StructValidator
  autoload :UnionValidator

  module Concerns
    extend ActiveSupport::Autoload
    autoload :ReadsBytes
    autoload :ConvertsToXDR
  end

  class Error < StandardError ; end
  class ReadError < Error ; end
  class EnumValueError < ReadError ; end

  mattr_accessor :logger
  self.logger = ActiveSupport::Logger.new(STDOUT)
  self.logger.level = Logger::WARN
end
