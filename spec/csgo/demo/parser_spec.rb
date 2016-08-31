require 'spec_helper'

module Overlook
  module Csgo
    module Demo
      describe Parser do
        before :all do
          class Subscriber
            attr_reader :ranks_spy, :header_spy, :done_spy, :xp_spy

            def initialize
              @ranks_spy = []
              @xp_spy = []
              @done_spy  = false
            end

            def xp_update(xp_update)
              xp_spy << xp_update
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

          @parser = Parser.new(File.open(File.expand_path("#{fixture_directory}/demo.dem")))
          @parser.subscribe(@subscriber)
          @parser.parse
        end

        describe '#parse', slow: true do

          it 'should notifiy subscribers when done parsing' do
            expect(@subscriber.done_spy).to eq(true)
          end

          it 'should parse the header' do
            expect(@subscriber.header_spy).to eq({ map_name: 'de_mirage' })
          end

          it 'should parse xp' do
            expect(@subscriber.xp_spy.count).to eq(10)

            expect(@subscriber.xp_spy).to eq([
              {
                "76561198162989408"=> {
                  xp:  327680208,
                  lvl: 17,
                  progress: [
                    {category: 2, xp: 327680480},
                    {category: 3, xp: 327680773}
                  ]
                }
              },
              {
                "76561198202011574" => {
                  xp: 327680760,
                  lvl: 18,
                  progress: [
                    {category: 2, xp: 327680480}
                  ]
                }
              },
              {
                "76561198020958035" => {
                  xp: 327681530,
                  lvl: 20,
                  progress: [
                    {category: 2, xp: 327680480}
                  ]
                }
              },
              {
                "76561197993676604" => {
                  xp: 327681234,
                  lvl: 3,
                  progress: [
                    {category: 52, xp: 327680084}
                  ]
                }
              },
              {
                "76561198141027724" => {
                  xp: 327683327,
                  lvl: 22,
                  progress: [
                    {category: 52, xp: 327680068}
                  ]
                }
              },
              {
                "76561198055983282" => {
                  xp: 327684291,
                  lvl: 17,
                  progress:
                  [
                    {category: 2, xp: 327680390},
                    {category: 3, xp: 327680983}
                  ]
                }
              },
              {
                "76561197970670011" => {
                  xp: 327682286,
                  lvl: 26,
                  progress: [
                    {category: 52, xp: 327680084}
                  ]
                }
              },
              {
                "76561197998193728" => {
                  xp: 327684421,
                  lvl: 23,
                  progress: [
                    {category: 52, xp: 327680068}
                  ]
                }
              },
              {
                "76561198064937789" => {
                  xp: 327683348,
                  lvl: 18,
                  progress:
                  [
                    {category: 2, xp: 327680390},
                    {category: 3, xp: 327681170}
                  ]
                }
              },
              {
                "76561197973670837" => {
                  xp: 327684740,
                  lvl: 21,
                  progress: [
                    {category: 2, xp: 327680390}
                  ]
                }
              }
            ])
          end

          it 'should parse ranks' do
            expect(@subscriber.ranks_spy.count).to eq(10)
            expect(@subscriber.ranks_spy).to eq([
              {rank_change: 0, wins: 169, community_id: '76561198162989408', rank: 13},
              {rank_change: 0, wins: 53,  community_id: '76561198202011574', rank: 12},
              {rank_change: 0, wins: 244, community_id: '76561198020958035', rank: 12},
              {rank_change: 0, wins: 3,   community_id: '76561197993676604', rank: 0 },
              {rank_change: 0, wins: 284, community_id: '76561197970670011', rank: 12},
              {rank_change: 0, wins: 220, community_id: '76561198141027724', rank: 12},
              {rank_change: 0, wins: 97,  community_id: '76561197973670837', rank: 11},
              {rank_change: 0, wins: 183, community_id: '76561197998193728', rank: 12},
              {rank_change: 0, wins: 93,  community_id: '76561198064937789', rank: 10},
              {rank_change: 0, wins: 115, community_id: '76561198055983282', rank: 12},
            ])
          end
        end
      end
    end
  end
end
