module Overlook
  module Csgo
    module Demo
      class GameEventListMessageHandler
        def initialize(parser)
          @parser = parser
        end

        def handle(message)
          game_event_list_message = CSVCMsg_GameEventList.decode(message)

          game_event_list_message.descriptors.each do |descriptor|
            @parser.descriptors[descriptor.eventid] ||= descriptor
          end
        end
      end
    end
  end
end
