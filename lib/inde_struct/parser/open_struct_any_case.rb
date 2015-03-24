require 'ostruct'
require 'inde_struct/parser/hash_any_case'

module IndeStruct
  module Parser
    class OpenStructAnyCase < OpenStruct

      def initialize(hash=nil)
        @table = IndeStruct::Parser::HashAnyCase.new
        if hash
          hash.each_pair do |k, v|
            k = k.to_sym
            @table[k] = v
            new_ostruct_member(k)
          end
        end
      end

    end
  end
end
