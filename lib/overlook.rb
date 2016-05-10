require 'overlook/version'
require 'overlook/csgo'

require 'overlook/bit_buffer'
require 'overlook/bit_reader'
require 'overlook/byte_reader'

require 'proto/compiled/descriptor.pb'
require 'proto/compiled/netmessages.pb'
require 'proto/compiled/cstrike15_gcmessages.pb'
require 'proto/compiled/cstrike15_usermessages.pb'

require 'steamidlib'

module Overlook
  def self.decode_share_code(code)
    decoder = Csgo::SharecodeDecoder.new(code)
    decoder.decode
  end
end
