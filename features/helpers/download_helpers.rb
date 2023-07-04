module DownloadHelpers
  PATH = File.join(__dir__, '..', '..', 'tmp', 'downloads')
  TIMEOUT = 10

  class << self
    def download_path
      test_run_id = ENV.fetch('TEST_RUN_ID', nil)

      if test_run_id
        File.join(PATH, test_run_id)
      else
        PATH
      end.to_s
    end

    def clear_downloads
      FileUtils.rm_rf(download_path)
    end

    def download_file_name
      wait_for_download

      File.basename(downloads.last)
    end

    private

    def downloads
      Dir["#{download_path}/*"].sort_by { |file| File.mtime(file) }
    end

    def wait_for_download
      Timeout.timeout(TIMEOUT) do
        sleep 0.1 until downloaded?
      end
    end

    def downloaded?
      !downloading? && downloads.any?
    end

    def downloading?
      downloads.grep(/\.part$/).any? || downloads.grep(/\.crdownload$/).any?
    end
  end
end
