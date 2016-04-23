require 'stringio'

module Overlook
  module Csgo
    class SharecodeDecoder
      InvalidShareCode = Class.new(StandardError)
      DecodingError    = Class.new(StandardError)

      DICTIONARY        = "ABCDEFGHJKLMNOPQRSTUVWXYZabcdefhijkmnopqrstuvwxyz23456789".freeze
      DICTIONARY_LENGTH = DICTIONARY.length.freeze

      attr_reader :code

      def initialize(_code)
        @code = _code.dup
      end

      def decode
        sanitize_code!

        reader     = ByteReader.new(io)
        matchid    = reader.read_int64
        outcomeid  = reader.read_int64
        tokenid    = reader.read_short

        { matchid: matchid.to_s, outcomeid: outcomeid.to_s, tokenid: tokenid.to_s }
      end

      private

      def io
        StringIO.new(decoded)
      end

      def decoded
        result = [0] * 18

        @code.chars.reverse.each_with_index do |char, index|
          addval = DICTIONARY.index(char)

          tmp    = [0] * 18

          carry, v = 0, 0
          17.downto(0).each do |t|
            carry = 0
            t.downto(0).each do |s|
              if t - s == 0
                v = tmp[s] + result[t] * 57
              else
                v = 0
              end

              v      = v + carry
              carry  = v >> 8
              tmp[s] = v & 0xFF
            end
          end

          result = tmp

          carry  = 0
          17.downto(0).each do |t|
            if t == 17
              v = result[t] + addval
            else
              v = result[t]
            end

            v         = v + carry
            carry     = v >> 8
            result[t] = v & 0xFF
          end
        end

        result.pack('C*')
      end

      def sanitize_code!
        @code.gsub!(/CSGO|\-/, '')
      end
    end
  end
end
