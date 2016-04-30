require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

task default: :spec

namespace :proto do
  desc 'Update the generated proto'
  task :update do
    proto_version = '2.6.0'

    FileUtils.mkdir_p('./lib/proto/proto')
    FileUtils.mkdir_p('./lib/proto/compiled')

    base_url = "https://raw.githubusercontent.com/SteamRE/SteamKit/master/Resources/Protobufs/csgo/"
    protos   = %w(cstrike15_gcmessages.proto cstrike15_usermessages.proto netmessages.proto steammessages.proto)

    Dir.chdir('./lib/proto/proto') do
      protos.each do |file|
        `curl -O #{base_url}/#{file}`
      end

      `curl -L https://github.com/google/protobuf/archive/v#{proto_version}.tar.gz -o protobuf.tar.gz`
      `rm -f protobuf.tar`
      `gunzip protobuf.tar.gz`
      `tar -xvzf protobuf.tar`

      protos.each do |file|
        `protoc --beefcake_out ../compiled -I . -I protobuf-#{proto_version}/src #{file}`

        %w(key_t class_t sendprop_t descriptor_t sounddata_t).each do |broken|
          fixed = broken
          fixed[0] = fixed[0].capitalize

          `sed 's/#{broken}/#{fixed}/g' #{file}`
        end
      end
    end


    puts "**** Beefcake generates some invalid Ruby, the generated files may need small hand corrections ****"
  end
end
