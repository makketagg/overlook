
module Overlook
  module Csgo
    module Demo
      class Base
        def initialize(io, parser_config)
          @parser = Parser.new(io, parser_config)
        end

        def subscribe(subscriber)
          @parser.subscribe(subscriber)
        end

        def parse
          @parser.parse
        end
      end
    end
  end
end
