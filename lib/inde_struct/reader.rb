require 'yaml'

module IndeStruct
  module Reader
    extend self

    class EmptyFileError < StandardError; end
    class EmptyInputError < StandardError; end
    class InvalidInputError < StandardError; end
    class InputError < StandardError; end

    #
    # parses YAML file or string into Ruby Hash
    #
    def read(input)
      raise EmptyInputError if input.is_a?(String) && input.strip.empty?
      raise InvalidInputError unless input.is_a?(String) or input.is_a?(File)
      # read to string if File
      input = IO.read(input) if input.is_a?(File) or File.exist?(input)
      raise EmptyFileError if input.strip.empty?
      x = YAML.load(input)
      raise InputError, 'YAML input did not parse to Hash' unless x.is_a?(Hash)
      return x
    end
  end
end
