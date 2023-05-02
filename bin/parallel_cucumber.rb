#!/usr/bin/env ruby

profile   = ARGV[0] || 'smoulder'
test_env  = ARGV[1] || 'local'

current_dir = `pwd`.chomp

# services = %w[facilities_management legal_services management_consultancy supply_teachers]
services = %w[legal_services management_consultancy supply_teachers]

windows = services.map do |service|
  open_terminal_cmd = `osascript -e 'tell app "Terminal" to do script "cd #{current_dir} && echo Running tests for: #{service} && CUCUMBER_FORMAT=progress TEST_ENV=#{test_env} bundle exec cucumber -p #{profile} features/services/#{service}/"'`

  open_terminal_cmd[19..]
end

services.zip(windows).each do |service, window_id|
  print("Close window for #{service} (ID: #{window_id}): ")
  close_window = $stdin.gets.chomp.downcase

  `osascript -e 'tell application "Terminal" to close window id #{window_id}'` if ['yes', 'y'].include?(close_window)
end
