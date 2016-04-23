require 'overlook/csgo/demo/base'

require 'overlook/csgo/demo/packet'
require 'overlook/csgo/demo/command'
require 'overlook/csgo/demo/header'

require 'overlook/csgo/demo/parser'

require 'overlook/csgo/demo/key_reader'

require 'overlook/csgo/demo/packet_handler'

require 'overlook/csgo/demo/user_message_message_handler'
require 'overlook/csgo/demo/game_event_list_message_handler'
require 'overlook/csgo/demo/game_event_message_handler'
require 'overlook/csgo/demo/encrypted_data_handler'

require 'overlook/csgo/demo/command_factory'
require 'overlook/csgo/demo/packet_factory'

module Overlook
  module Csgo
    module Demo
      class << self
        def open(io)
          Base.new(io)
        end

        alias :new :open
      end
    end
  end
end
