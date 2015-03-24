require 'inde_struct/version'
require 'inde_struct/reader'
require 'inde_struct/parser'

module IndeStruct
  extend self

  def ible(arg)
    obj = arg.is_a?(Hash) ? arg : IndeStruct::Reader.read(arg)
    IndeStruct::Parser.parse(obj)
  end

  alias_method :new, :ible
end
