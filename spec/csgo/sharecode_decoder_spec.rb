require 'spec_helper'

module Overlook
  module Csgo
    describe SharecodeDecoder do
      describe 'decode' do
        it 'can decode a global offensive match share code' do
          codes = {
            "CSGO-U6MWi-hYFWJ-opPwD-JciHm-qOijD" => { matchid: '3106049990460440633', outcomeid: '3106056003414655216', tokenid: '11842' },
            "CSGO-whosy-KSEpT-YZav4-zwXuM-K8o3B" => { matchid: '3110990768366419998', outcomeid: '3110996667504001139', tokenid: '32677' },
            "CSGO-QhniT-hhRX4-a9EuJ-jxjKF-J9tvE" => { matchid: '3109117359466479692', outcomeid: '3109122949366415570', tokenid: '62462' },
            "CSGO-ARatS-fYvxj-oOqzs-YmseK-8HsiB" => { matchid: '3108943228607397913', outcomeid: '3108948217211912212', tokenid: '55216' },
            "CSGO-UFTm4-7WKoO-jwKdA-qtMou-rNcqA" => { matchid: '3076524486892191755', outcomeid: '3076528064599949376', tokenid: '13142' },
          }

          codes.each_pair do |code, expected|
            decoder = SharecodeDecoder.new(code)
            actual = decoder.decode

            expect(actual).to eq(expected)
          end
        end
      end
    end
  end
end
