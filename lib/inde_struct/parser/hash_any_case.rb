module IndeStruct
  module Parser
    class HashAnyCase < Hash

      def [](key)
        key.respond_to?(:upcase) ? super(key.upcase) : super(key)
      end

      def []=(key, value)
        key.respond_to?(:upcase) ? super(key.upcase, value) : super(key, value)
      end

    end
  end
end
