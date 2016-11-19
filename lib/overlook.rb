require 'steamidlib'
require 'steam/proto'
Steam::Proto.load_protobufs(:csgo)

require 'overlook/version'
require 'overlook/csgo'

require 'overlook/bit_buffer'
require 'overlook/bit_reader'
require 'overlook/byte_reader'

module Overlook
  def self.decode_share_code(code)
    decoder = Csgo::SharecodeDecoder.new(code)
    decoder.decode
  end
end
