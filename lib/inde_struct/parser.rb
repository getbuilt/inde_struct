require 'inde_struct/parser/open_struct_any_case'

module IndeStruct
  module Parser
    extend self

    def parse(obj)
      return case obj
      when Hash
        obj = obj.clone
        obj.each do |k,v|
          obj[k] = self.parse(v)
        end
        IndeStruct::Parser::OpenStructAnyCase.new(obj)
      when Array
        obj = obj.clone
        obj.map! {|i| self.parse(i)}
      else
        obj
      end
    end

  end
end
