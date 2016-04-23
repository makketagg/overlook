

require 'spec_helper'

module Overlook
  module Csgo
    describe MatchInfoDecoder do
      describe 'decode' do
        before do
          @decoder = MatchInfoDecoder.new
        end

        it 'can decode match info from an io stream' do
          path = File.expand_path('./spec/fixtures/demo.dem.info')
          io = File.open(path)

          match_info  = @decoder.decode(io)

          expect(match_info).to eq({
            match: {
              matchid: "3110016098553037112", matchtime: 1448214100
            },
            replay: {
              ip: 122, 
              port: 1359221371, 
              reservation_id: "3110019714915500495"
            },
            stats: [
              {
                round: 0,
                timestamp: 1448214168,
                scores: {
                  "76561198055617475" => {enemy_kills: 1, enemy_headshots: 1, kills: 1, deaths: 1, assists: 0, scores: 2, mvps: 0, team: 1},
                  "76561198198420071" => {enemy_kills: 1, enemy_headshots: 1, kills: 1, deaths: 1, assists: 0, scores: 2, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 1, enemy_headshots: 1, kills: 1, deaths: 1, assists: 0, scores: 2, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 1, assists: 0, scores: 0, mvps: 0, team: 1},
                  "76561198089666639" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 1, assists: 0, scores: 0, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 3, enemy_headshots: 3, kills: 3, deaths: 0, assists: 0, scores: 6, mvps: 1, team: 2},
                  "76561198037452204" => {enemy_kills: 1, enemy_headshots: 1, kills: 1, deaths: 1, assists: 0, scores: 2, mvps: 0, team: 2},
                  "76561198038701791" => {enemy_kills: 1, enemy_headshots: 1, kills: 1, deaths: 1, assists: 0, scores: 2, mvps: 0, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2},
                  "76561198040048064" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 1, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 1,
                timestamp: 1448214233,
                scores: {
                  "76561198089666639" => {enemy_kills: 2, enemy_headshots: 2, kills: 2, deaths: 2, assists: 0, scores: 4, mvps: 0, team: 1},
                  "76561198198420071" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 2, assists: 0, scores: 4, mvps: 0, team: 1},
                  "76561198055617475" => {enemy_kills: 1, enemy_headshots: 1, kills: 1, deaths: 2, assists: 0, scores: 2, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 1, enemy_headshots: 1, kills: 1, deaths: 2, assists: 0, scores: 2, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 2, assists: 0, scores: 0, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 6, enemy_headshots: 4, kills: 6, deaths: 0, assists: 0, scores: 12, mvps: 2, team: 2},
                  "76561198038701791" => {enemy_kills: 2, enemy_headshots: 2, kills: 2, deaths: 1, assists: 0, scores: 4, mvps: 0, team: 2},
                  "76561198037452204" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 2, assists: 0, scores: 4, mvps: 0, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2},
                  "76561198040048064" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 2, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 2,
                timestamp: 1448214313,
                scores: {
                  "76561198089666639" => {enemy_kills: 4, enemy_headshots: 3, kills: 4, deaths: 3, assists: 0, scores: 9, mvps: 1, team: 1},
                  "76561198055617475" => {enemy_kills: 3, enemy_headshots: 2, kills: 3, deaths: 2, assists: 0, scores: 6, mvps: 0, team: 1},
                  "76561198198420071" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 2, assists: 0, scores: 4, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 1, enemy_headshots: 0, kills: 1, deaths: 2, assists: 1, scores: 3, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 1, enemy_headshots: 1, kills: 1, deaths: 3, assists: 0, scores: 2, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 7, enemy_headshots: 5, kills: 7, deaths: 1, assists: 1, scores: 15, mvps: 2, team: 2},
                  "76561198038701791" => {enemy_kills: 3, enemy_headshots: 2, kills: 3, deaths: 2, assists: 0, scores: 6, mvps: 0, team: 2},
                  "76561198037452204" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 3, assists: 0, scores: 4, mvps: 0, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2},
                  "76561198040048064" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 3, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 3,
                timestamp: 1448214368,
                scores:   {
                  "76561198089666639" => {enemy_kills: 6, enemy_headshots: 4, kills: 6, deaths: 4, assists: 0, scores: 13, mvps: 1, team: 1},
                  "76561198055617475" => {enemy_kills: 3, enemy_headshots: 2, kills: 3, deaths: 3, assists: 0, scores: 6, mvps: 0, team: 1},
                  "76561198198420071" => {enemy_kills: 3, enemy_headshots: 2, kills: 3, deaths: 3, assists: 0, scores: 6, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 1, enemy_headshots: 0, kills: 1, deaths: 3, assists: 1, scores: 3, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 1, enemy_headshots: 1, kills: 1, deaths: 4, assists: 0, scores: 2, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 10, enemy_headshots: 7, kills: 10, deaths: 1, assists: 1, scores: 21, mvps: 3, team: 2},
                  "76561198037452204" => {enemy_kills: 4, enemy_headshots: 2, kills: 4, deaths: 4, assists: 0, scores: 8, mvps: 0, team: 2},
                  "76561198038701791" => {enemy_kills: 3, enemy_headshots: 2, kills: 3, deaths: 3, assists: 0, scores: 6, mvps: 0, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2},
                  "76561198040048064" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 3, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 4,
                timestamp: 1448214483,
                scores: {
                  "76561198089666639" => {enemy_kills: 7, enemy_headshots: 4, kills: 7, deaths: 5, assists: 0, scores: 15, mvps: 1, team: 1},
                  "76561198055617475" => {enemy_kills: 4, enemy_headshots: 3, kills: 4, deaths: 4, assists: 0, scores: 8, mvps: 0, team: 1},
                  "76561198198420071" => {enemy_kills: 3, enemy_headshots: 2, kills: 3, deaths: 4, assists: 0, scores: 6, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 1, enemy_headshots: 0, kills: 1, deaths: 4, assists: 1, scores: 3, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 1, enemy_headshots: 1, kills: 1, deaths: 5, assists: 0, scores: 2, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 11, enemy_headshots: 8, kills: 11, deaths: 2, assists: 1, scores: 23, mvps: 3, team: 2},
                  "76561198038701791" => {enemy_kills: 5, enemy_headshots: 2, kills: 5, deaths: 3, assists: 0, scores: 10, mvps: 1, team: 2},
                  "76561198037452204" => {enemy_kills: 4, enemy_headshots: 2, kills: 4, deaths: 5, assists: 0, scores: 8, mvps: 0, team: 2},
                  "76561198040048064" => {enemy_kills: 1, enemy_headshots: 0, kills: 1, deaths: 3, assists: 0, scores: 2, mvps: 0, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 5,
                timestamp: 1448214533,
                scores: {
                  "76561198089666639" => {enemy_kills: 7, enemy_headshots: 4, kills: 7, deaths: 6, assists: 0, scores: 15, mvps: 1, team: 1},
                  "76561198055617475" => {enemy_kills: 4, enemy_headshots: 3, kills: 4, deaths: 5, assists: 0, scores: 8, mvps: 0, team: 1},
                  "76561198198420071" => {enemy_kills: 3, enemy_headshots: 2, kills: 3, deaths: 5, assists: 0, scores: 6, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 1, enemy_headshots: 0, kills: 1, deaths: 5, assists: 1, scores: 3, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 1, enemy_headshots: 1, kills: 1, deaths: 6, assists: 0, scores: 2, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 13, enemy_headshots: 9, kills: 13, deaths: 2, assists: 1, scores: 27, mvps: 4, team: 2},
                  "76561198038701791" => {enemy_kills: 5, enemy_headshots: 2, kills: 5, deaths: 3, assists: 0, scores: 10, mvps: 1, team: 2},
                  "76561198037452204" => {enemy_kills: 5, enemy_headshots: 3, kills: 5, deaths: 5, assists: 0, scores: 10, mvps: 0, team: 2},
                  "76561198040048064" => {enemy_kills: 2, enemy_headshots: 0, kills: 2, deaths: 3, assists: 1, scores: 5, mvps: 0, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 6,
                timestamp: 1448214626,
                scores: {
                  "76561198089666639" => {enemy_kills: 7, enemy_headshots: 4, kills: 7, deaths: 7, assists: 1, scores: 16, mvps: 1, team: 1},
                  "76561198055617475" => {enemy_kills: 7, enemy_headshots: 3, kills: 7, deaths: 5, assists: 0, scores: 14, mvps: 1, team: 1},
                  "76561198198420071" => {enemy_kills: 3, enemy_headshots: 2, kills: 3, deaths: 6, assists: 0, scores: 6, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 6, assists: 2, scores: 6, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 7, assists: 0, scores: 4, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 13, enemy_headshots: 9, kills: 13, deaths: 3, assists: 1, scores: 27, mvps: 4, team: 2},
                  "76561198038701791" => {enemy_kills: 8, enemy_headshots: 3, kills: 8, deaths: 4, assists: 0, scores: 16, mvps: 1, team: 2},
                  "76561198037452204" => {enemy_kills: 5, enemy_headshots: 3, kills: 5, deaths: 6, assists: 0, scores: 10, mvps: 0, team: 2},
                  "76561198040048064" => {enemy_kills: 2, enemy_headshots: 0, kills: 2, deaths: 4, assists: 1, scores: 5, mvps: 0, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 7,
                timestamp: 1448214697,
                scores: {
                  "76561198089666639" => {enemy_kills: 8, enemy_headshots: 4, kills: 8, deaths: 8, assists: 1, scores: 18, mvps: 1, team: 1},
                  "76561198055617475" => {enemy_kills: 8, enemy_headshots: 3, kills: 8, deaths: 6, assists: 1, scores: 17, mvps: 1, team: 1},
                  "76561198198420071" => {enemy_kills: 5, enemy_headshots: 4, kills: 5, deaths: 7, assists: 0, scores: 10, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 7, assists: 2, scores: 6, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 8, assists: 0, scores: 4, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 15, enemy_headshots: 10, kills: 15, deaths: 3, assists: 1, scores: 31, mvps: 5, team: 2},
                  "76561198038701791" => {enemy_kills: 9, enemy_headshots: 3, kills: 9, deaths: 5, assists: 0, scores: 18, mvps: 1, team: 2},
                  "76561198037452204" => {enemy_kills: 5, enemy_headshots: 3, kills: 5, deaths: 7, assists: 2, scores: 12, mvps: 0, team: 2},
                  "76561198040048064" => {enemy_kills: 2, enemy_headshots: 0, kills: 2, deaths: 5, assists: 2, scores: 6, mvps: 0, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 8,
                timestamp: 1448214781,
                scores: {
                  "76561198055617475" => {enemy_kills: 8, enemy_headshots: 3, kills: 8, deaths: 7, assists: 2, scores: 18, mvps: 1, team: 1},
                  "76561198089666639" => {enemy_kills: 8, enemy_headshots: 4, kills: 8, deaths: 9, assists: 1, scores: 18, mvps: 1, team: 1},
                  "76561198198420071" => {enemy_kills: 8, enemy_headshots: 7, kills: 8, deaths: 8, assists: 0, scores: 16, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 8, assists: 2, scores: 6, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 9, assists: 0, scores: 4, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 17, enemy_headshots: 11, kills: 17, deaths: 3, assists: 1, scores: 35, mvps: 5, team: 2},
                  "76561198038701791" => {enemy_kills: 9, enemy_headshots: 3, kills: 9, deaths: 6, assists: 1, scores: 19, mvps: 1, team: 2},
                  "76561198037452204" => {enemy_kills: 7, enemy_headshots: 3, kills: 7, deaths: 8, assists: 3, scores: 17, mvps: 1, team: 2},
                  "76561198040048064" => {enemy_kills: 2, enemy_headshots: 0, kills: 2, deaths: 6, assists: 2, scores: 6, mvps: 0, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 9,
                timestamp: 1448214846,
                scores: {
                  "76561198055617475" => {enemy_kills: 9, enemy_headshots: 3, kills: 9, deaths: 8, assists: 2, scores: 20, mvps: 1, team: 1},
                  "76561198089666639" => {enemy_kills: 8, enemy_headshots: 4, kills: 8, deaths: 10, assists: 1, scores: 18, mvps: 1, team: 1},
                  "76561198198420071" => {enemy_kills: 8, enemy_headshots: 7, kills: 8, deaths: 9, assists: 0, scores: 16, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 9, assists: 2, scores: 6, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 10, assists: 0, scores: 4, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 18, enemy_headshots: 11, kills: 18, deaths: 3, assists: 1, scores: 37, mvps: 5, team: 2},
                  "76561198038701791" => {enemy_kills: 10, enemy_headshots: 3, kills: 10, deaths: 6, assists: 1, scores: 21, mvps: 1, team: 2},
                  "76561198037452204" => {enemy_kills: 8, enemy_headshots: 4, kills: 8, deaths: 9, assists: 3, scores: 19, mvps: 2, team: 2},
                  "76561198040048064" => {enemy_kills: 2, enemy_headshots: 0, kills: 2, deaths: 6, assists: 2, scores: 6, mvps: 0, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 10,
                timestamp: 1448214901,
                scores: {
                  "76561198055617475" => {enemy_kills: 9, enemy_headshots: 3, kills: 9, deaths: 9, assists: 2, scores: 20, mvps: 1, team: 1},
                  "76561198089666639" => {enemy_kills: 8, enemy_headshots: 4, kills: 8, deaths: 11, assists: 1, scores: 18, mvps: 1, team: 1},
                  "76561198198420071" => {enemy_kills: 8, enemy_headshots: 7, kills: 8, deaths: 10, assists: 0, scores: 16, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 9, assists: 2, scores: 6, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 11, assists: 0, scores: 4, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 18, enemy_headshots: 11, kills: 18, deaths: 3, assists: 1, scores: 37, mvps: 5, team: 2},
                  "76561198038701791" => {enemy_kills: 10, enemy_headshots: 3, kills: 10, deaths: 6, assists: 1, scores: 21, mvps: 1, team: 2},
                  "76561198037452204" => {enemy_kills: 9, enemy_headshots: 4, kills: 9, deaths: 9, assists: 3, scores: 21, mvps: 2, team: 2},
                  "76561198040048064" => {enemy_kills: 5, enemy_headshots: 0, kills: 5, deaths: 6, assists: 2, scores: 12, mvps: 1, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 11,
                timestamp: 1448214964,
                scores:           {
                  "76561198055617475" => {enemy_kills: 9, enemy_headshots: 3, kills: 9, deaths: 10, assists: 2, scores: 20, mvps: 1, team: 1},
                  "76561198089666639" => {enemy_kills: 8, enemy_headshots: 4, kills: 8, deaths: 12, assists: 1, scores: 18, mvps: 1, team: 1},
                  "76561198198420071" => {enemy_kills: 8, enemy_headshots: 7, kills: 8, deaths: 11, assists: 0, scores: 16, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 9, assists: 2, scores: 6, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 12, assists: 0, scores: 4, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 20, enemy_headshots: 12, kills: 20, deaths: 3, assists: 1, scores: 41, mvps: 6, team: 2},
                  "76561198037452204" => {enemy_kills: 10, enemy_headshots: 5, kills: 10, deaths: 9, assists: 3, scores: 23, mvps: 2, team: 2},
                  "76561198038701791" => {enemy_kills: 10, enemy_headshots: 3, kills: 10, deaths: 6, assists: 1, scores: 21, mvps: 1, team: 2},
                  "76561198040048064" => {enemy_kills: 7, enemy_headshots: 1, kills: 7, deaths: 6, assists: 2, scores: 16, mvps: 1, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 12,
                timestamp: 1448215021,
                scores: {
                  "76561198055617475" => {enemy_kills: 9, enemy_headshots: 3, kills: 9, deaths: 11, assists: 3, scores: 21, mvps: 1, team: 1},
                  "76561198089666639" => {enemy_kills: 8, enemy_headshots: 4, kills: 8, deaths: 13, assists: 1, scores: 18, mvps: 1, team: 1},
                  "76561198198420071" => {enemy_kills: 8, enemy_headshots: 7, kills: 8, deaths: 12, assists: 0, scores: 16, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 3, enemy_headshots: 2, kills: 3, deaths: 13, assists: 0, scores: 6, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 10, assists: 2, scores: 6, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 21, enemy_headshots: 12, kills: 21, deaths: 4, assists: 1, scores: 43, mvps: 6, team: 2},
                  "76561198037452204" => {enemy_kills: 12, enemy_headshots: 5, kills: 12, deaths: 9, assists: 3, scores: 27, mvps: 2, team: 2},
                  "76561198038701791" => {enemy_kills: 10, enemy_headshots: 3, kills: 10, deaths: 6, assists: 1, scores: 21, mvps: 1, team: 2},
                  "76561198040048064" => {enemy_kills: 9, enemy_headshots: 1, kills: 9, deaths: 6, assists: 3, scores: 21, mvps: 2, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 13,
                timestamp: 1448215106,
                scores: {
                  "76561198055617475" => {enemy_kills: 10, enemy_headshots: 4, kills: 10, deaths: 12, assists: 3, scores: 23, mvps: 1, team: 1},
                  "76561198089666639" => {enemy_kills: 8, enemy_headshots: 4, kills: 8, deaths: 14, assists: 1, scores: 18, mvps: 1, team: 1},
                  "76561198198420071" => {enemy_kills: 8, enemy_headshots: 7, kills: 8, deaths: 13, assists: 0, scores: 16, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 3, enemy_headshots: 2, kills: 3, deaths: 14, assists: 0, scores: 6, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 2, enemy_headshots: 1, kills: 2, deaths: 11, assists: 2, scores: 6, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 23, enemy_headshots: 12, kills: 23, deaths: 4, assists: 1, scores: 47, mvps: 6, team: 2},
                  "76561198037452204" => {enemy_kills: 12, enemy_headshots: 5, kills: 12, deaths: 9, assists: 3, scores: 27, mvps: 2, team: 2},
                  "76561198038701791" => {enemy_kills: 12, enemy_headshots: 4, kills: 12, deaths: 6, assists: 1, scores: 25, mvps: 2, team: 2},
                  "76561198040048064" => {enemy_kills: 10, enemy_headshots: 1, kills: 10, deaths: 7, assists: 4, scores: 24, mvps: 2, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 14,
                timestamp: 1448215239,
                scores:             {
                  "76561198055617475" => {enemy_kills: 13, enemy_headshots: 5, kills: 13, deaths: 13, assists: 3, scores: 30, mvps: 1, team: 1},
                  "76561198089666639" => {enemy_kills: 8, enemy_headshots: 4, kills: 8, deaths: 15, assists: 1, scores: 18, mvps: 1, team: 1},
                  "76561198198420071" => {enemy_kills: 8, enemy_headshots: 7, kills: 8, deaths: 14, assists: 1, scores: 17, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 3, enemy_headshots: 1, kills: 3, deaths: 12, assists: 3, scores: 9, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 3, enemy_headshots: 2, kills: 3, deaths: 15, assists: 0, scores: 6, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 23, enemy_headshots: 12, kills: 23, deaths: 5, assists: 1, scores: 47, mvps: 6, team: 2},
                  "76561198037452204" => {enemy_kills: 15, enemy_headshots: 6, kills: 15, deaths: 10, assists: 3, scores: 33, mvps: 3, team: 2},
                  "76561198038701791" => {enemy_kills: 13, enemy_headshots: 4, kills: 13, deaths: 6, assists: 1, scores: 28, mvps: 2, team: 2},
                  "76561198040048064" => {enemy_kills: 10, enemy_headshots: 1, kills: 10, deaths: 8, assists: 4, scores: 24, mvps: 2, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 15,
                timestamp: 1448215321,
                scores:               {
                  "76561198055617475" => {enemy_kills: 15, enemy_headshots: 7, kills: 15, deaths: 14, assists: 3, scores: 34, mvps: 1, team: 1},
                  "76561198089666639" => {enemy_kills: 10, enemy_headshots: 6, kills: 10, deaths: 16, assists: 1, scores: 22, mvps: 2, team: 1},
                  "76561198198420071" => {enemy_kills: 8, enemy_headshots: 7, kills: 8, deaths: 15, assists: 2, scores: 18, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 3, enemy_headshots: 1, kills: 3, deaths: 12, assists: 3, scores: 9, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 4, enemy_headshots: 2, kills: 4, deaths: 15, assists: 0, scores: 8, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 23, enemy_headshots: 12, kills: 23, deaths: 6, assists: 1, scores: 47, mvps: 6, team: 2},
                  "76561198038701791" => {enemy_kills: 16, enemy_headshots: 7, kills: 16, deaths: 7, assists: 1, scores: 34, mvps: 2, team: 2},
                  "76561198037452204" => {enemy_kills: 15, enemy_headshots: 6, kills: 15, deaths: 11, assists: 3, scores: 33, mvps: 3, team: 2},
                  "76561198040048064" => {enemy_kills: 10, enemy_headshots: 1, kills: 10, deaths: 9, assists: 4, scores: 24, mvps: 2, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 16,
                timestamp: 1448215387,
                scores:               {
                  "76561198055617475" => {enemy_kills: 18, enemy_headshots: 7, kills: 18, deaths: 14, assists: 3, scores: 40, mvps: 2, team: 1},
                  "76561198089666639" => {enemy_kills: 10, enemy_headshots: 6, kills: 10, deaths: 17, assists: 1, scores: 22, mvps: 2, team: 1},
                  "76561198198420071" => {enemy_kills: 8, enemy_headshots: 7, kills: 8, deaths: 16, assists: 2, scores: 18, mvps: 0, team: 1},
                  "76561198110874516" => {enemy_kills: 6, enemy_headshots: 4, kills: 6, deaths: 16, assists: 0, scores: 12, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 3, enemy_headshots: 1, kills: 3, deaths: 13, assists: 3, scores: 9, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 24, enemy_headshots: 12, kills: 24, deaths: 7, assists: 1, scores: 49, mvps: 6, team: 2},
                  "76561198038701791" => {enemy_kills: 17, enemy_headshots: 7, kills: 17, deaths: 8, assists: 1, scores: 36, mvps: 2, team: 2},
                  "76561198037452204" => {enemy_kills: 15, enemy_headshots: 6, kills: 15, deaths: 12, assists: 3, scores: 33, mvps: 3, team: 2},
                  "76561198040048064" => {enemy_kills: 12, enemy_headshots: 1, kills: 12, deaths: 10, assists: 5, scores: 29, mvps: 2, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 17,
                timestamp: 1448215442,
                scores:                 {
                  "76561198055617475" => {enemy_kills: 19, enemy_headshots: 7, kills: 19, deaths: 15, assists: 4, scores: 43, mvps: 2, team: 1},
                  "76561198198420071" => {enemy_kills: 10, enemy_headshots: 7, kills: 10, deaths: 17, assists: 2, scores: 24, mvps: 0, team: 1},
                  "76561198089666639" => {enemy_kills: 10, enemy_headshots: 6, kills: 10, deaths: 18, assists: 1, scores: 22, mvps: 2, team: 1},
                  "76561198110874516" => {enemy_kills: 6, enemy_headshots: 4, kills: 6, deaths: 17, assists: 1, scores: 13, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 4, enemy_headshots: 2, kills: 4, deaths: 14, assists: 3, scores: 11, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 25, enemy_headshots: 12, kills: 25, deaths: 8, assists: 1, scores: 51, mvps: 6, team: 2},
                  "76561198038701791" => {enemy_kills: 19, enemy_headshots: 7, kills: 19, deaths: 8, assists: 1, scores: 40, mvps: 3, team: 2},
                  "76561198037452204" => {enemy_kills: 17, enemy_headshots: 7, kills: 17, deaths: 13, assists: 3, scores: 38, mvps: 3, team: 2},
                  "76561198040048064" => {enemy_kills: 12, enemy_headshots: 1, kills: 12, deaths: 11, assists: 5, scores: 29, mvps: 2, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 18,
                timestamp: 1448215545,
                scores:                 {
                  "76561198055617475" => {enemy_kills: 20, enemy_headshots: 7, kills: 20, deaths: 16, assists: 4, scores: 45, mvps: 2, team: 1},
                  "76561198198420071" => {enemy_kills: 12, enemy_headshots: 7, kills: 12, deaths: 17, assists: 2, scores: 29, mvps: 1, team: 1},
                  "76561198089666639" => {enemy_kills: 11, enemy_headshots: 7, kills: 11, deaths: 19, assists: 1, scores: 24, mvps: 2, team: 1},
                  "76561198110874516" => {enemy_kills: 7, enemy_headshots: 5, kills: 7, deaths: 18, assists: 3, scores: 17, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 4, enemy_headshots: 2, kills: 4, deaths: 15, assists: 3, scores: 11, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 26, enemy_headshots: 12, kills: 26, deaths: 9, assists: 1, scores: 53, mvps: 6, team: 2},
                  "76561198038701791" => {enemy_kills: 20, enemy_headshots: 7, kills: 20, deaths: 9, assists: 1, scores: 42, mvps: 3, team: 2},
                  "76561198037452204" => {enemy_kills: 17, enemy_headshots: 7, kills: 17, deaths: 14, assists: 3, scores: 38, mvps: 3, team: 2},
                  "76561198040048064" => {enemy_kills: 14, enemy_headshots: 1, kills: 14, deaths: 12, assists: 5, scores: 34, mvps: 2, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 19,
                timestamp: 1448215604,
                scores:                   {
                  "76561198055617475" => {enemy_kills: 20, enemy_headshots: 7, kills: 20, deaths: 17, assists: 4, scores: 45, mvps: 2, team: 1},
                  "76561198198420071" => {enemy_kills: 12, enemy_headshots: 7, kills: 12, deaths: 18, assists: 2, scores: 29, mvps: 1, team: 1},
                  "76561198089666639" => {enemy_kills: 13, enemy_headshots: 7, kills: 13, deaths: 20, assists: 1, scores: 28, mvps: 2, team: 1},
                  "76561198110874516" => {enemy_kills: 8, enemy_headshots: 6, kills: 8, deaths: 19, assists: 3, scores: 19, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 4, enemy_headshots: 2, kills: 4, deaths: 16, assists: 3, scores: 11, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 26, enemy_headshots: 12, kills: 26, deaths: 10, assists: 1, scores: 53, mvps: 6, team: 2},
                  "76561198038701791" => {enemy_kills: 22, enemy_headshots: 7, kills: 22, deaths: 10, assists: 2, scores: 47, mvps: 4, team: 2},
                  "76561198037452204" => {enemy_kills: 18, enemy_headshots: 7, kills: 18, deaths: 14, assists: 4, scores: 42, mvps: 3, team: 2},
                  "76561198040048064" => {enemy_kills: 15, enemy_headshots: 1, kills: 15, deaths: 13, assists: 5, scores: 36, mvps: 2, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              },
              {
                round: 20,
                timestamp: 1448215678,
                scores:                   {
                  "76561198055617475" => {enemy_kills: 20, enemy_headshots: 7, kills: 20, deaths: 18, assists: 4, scores: 45, mvps: 2, team: 1},
                  "76561198198420071" => {enemy_kills: 12, enemy_headshots: 7, kills: 12, deaths: 19, assists: 2, scores: 29, mvps: 1, team: 1},
                  "76561198089666639" => {enemy_kills: 13, enemy_headshots: 7, kills: 13, deaths: 21, assists: 1, scores: 28, mvps: 2, team: 1},
                  "76561198110874516" => {enemy_kills: 9, enemy_headshots: 6, kills: 9, deaths: 20, assists: 3, scores: 21, mvps: 0, team: 1},
                  "76561198118333775" => {enemy_kills: 6, enemy_headshots: 4, kills: 6, deaths: 17, assists: 3, scores: 15, mvps: 0, team: 1},
                  "76561197998193728" => {enemy_kills: 26, enemy_headshots: 12, kills: 26, deaths: 11, assists: 1, scores: 53, mvps: 6, team: 2},
                  "76561198038701791" => {enemy_kills: 25, enemy_headshots: 8, kills: 25, deaths: 10, assists: 2, scores: 53, mvps: 5, team: 2},
                  "76561198037452204" => {enemy_kills: 18, enemy_headshots: 7, kills: 18, deaths: 15, assists: 5, scores: 43, mvps: 3, team: 2},
                  "76561198040048064" => {enemy_kills: 17, enemy_headshots: 2, kills: 17, deaths: 14, assists: 6, scores: 41, mvps: 2, team: 2},
                  "76561198089210834" => {enemy_kills: 0, enemy_headshots: 0, kills: 0, deaths: 0, assists: 0, scores: 0, mvps: 0, team: 2}
                }
              }
            ],
            results: {
              winner: 2, 
              score: [5, 16], 
              duration: 1578
            }
          })
        end
      end
    end
  end
end
