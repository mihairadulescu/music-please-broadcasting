require 'spec_helper'
require 'operations/download_youtube_video'
RSpec.describe Operations::DownloadYoutubeVideo do
  describe('call') do

    subject { described_class.new }
    it 'downloads video from youtube' do
      subject.call({youtube_url:  "https://www.youtube.com/watch?v=8ZHA-KNSB6M" , output_file:'/tmp/someoutpuit.mp4'})

    end
  end
end