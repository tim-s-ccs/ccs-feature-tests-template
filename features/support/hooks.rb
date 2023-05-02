# frozen_string_literal: true

Before do |scenario|
  %w[rm6187 rm6232 rm6238 rm6240].each do |framework|
    if scenario.location.file.include? framework
      @framework = framework.upcase
      break
    end
  end
end

Before('@mobile') do
  resize_window_to_mobile
end

After('@mobile') do
  resize_window_to_pc
end

Before('@file-download') do
  DownloadHelpers.clear_downloads
end

After('@file-download') do
  DownloadHelpers.clear_downloads
end
