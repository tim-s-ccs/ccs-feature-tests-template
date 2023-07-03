#!/usr/bin/env ruby

profile             = ARGV[0] || 'smoulder'
test_env            = ARGV[1] || 'local'
number_of_processes = ARGV[2] || '2'

system("CUCUMBER_FORMAT=progress TEST_ENV=#{test_env} bundle exec parallel_cucumber -n #{number_of_processes} -o '-p #{profile}'")
