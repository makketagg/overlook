require 'spec_helper'

module Overlook
  module Csgo
    module Demo
      describe Parser do
        before :all do
          class Subscriber
            attr_reader :ranks_spy, :header_spy, :done_spy

            def initialize
              @ranks_spy = []
              @done_spy  = false
            end

            def rank_update(rank_update)
              ranks_spy << rank_update
            end

            def header(_header)
              @header_spy = _header
            end

            def done(data)
              @done_spy = true
            end
          end

          @subscriber = Subscriber.new

          @parser = Parser.new(File.open(File.expand_path('spec/fixtures/demo.dem')))
          @parser.subscribe(@subscriber)
          @parser.parse
        end

        it 'should notifiy subscribers when done parsing' do
          expect(@subscriber.done_spy).to eq(true)
        end

        it 'should parse the header' do
          expect(@subscriber.header_spy).to eq({ map_name: 'de_mirage' })
        end

        it 'should parse ranks' do
          expect(@subscriber.ranks_spy).to eq([
            {community_id: '76561198162989408', rank: 13},
            {community_id: '76561198202011574', rank: 12},
            {community_id: '76561198020958035', rank: 12},
            {community_id: '76561197993676604', rank: 0 },
            {community_id: '76561197970670011', rank: 12},
            {community_id: '76561198141027724', rank: 12},
            {community_id: '76561197973670837', rank: 11},
            {community_id: '76561197998193728', rank: 12},
            {community_id: '76561198064937789', rank: 10},
            {community_id: '76561198055983282', rank: 12},
          ])
        end
      end
    end
  end
end
