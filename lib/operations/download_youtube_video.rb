require 'youtube-dl'

module Operations
  class DownloadYoutubeVideo
    def call(input)
      options = {
          rate_limit: '50K',
          format: :worst,
          continue: false,
          output: input[:output_file]
      }
      p input
      YoutubeDL.download input[:youtube_url], options
    end
  end
end