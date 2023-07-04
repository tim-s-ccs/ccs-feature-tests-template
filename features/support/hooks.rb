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
