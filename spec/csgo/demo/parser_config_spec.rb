require 'spec_helper'

module Overlook
  module Csgo
    module Demo
      describe ParserConfig do
        before do
          @config = ParserConfig.new
        end

        it 'defaults parse_encrypted_data to true' do
          expect(@config.parse_encrypted_data).to eq(true)
        end

        it 'defaults parse_user_messages to true' do
          expect(@config.parse_user_messages).to eq(true)
        end

        it 'defaults parse_game_events to true' do
          expect(@config.parse_game_events).to eq(true)
        end

        it 'allows parse_encrypted_data to be set' do
          config = ParserConfig.new(parse_encrypted_data: false)
          expect(config.parse_encrypted_data).to eq(false)
        end

        it 'allows parse_user_messages to be set' do
          config = ParserConfig.new(parse_user_messages: false)
          expect(config.parse_user_messages).to eq(false)
        end

        it 'allows parse_game_events to be set' do
          config = ParserConfig.new(parse_game_events: false)
          expect(config.parse_game_events).to eq(false)
        end

        it 'has method aliases' do
          expect(@config.parse_game_events?).to eq(true)
          expect(@config.parse_user_messages?).to eq(true)
          expect(@config.parse_encrypted_data?).to eq(true)
        end
      end
    end
  end
end
