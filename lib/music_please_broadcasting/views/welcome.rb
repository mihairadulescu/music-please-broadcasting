require "music_please_broadcasting/view_controller"

module MusicPleaseBroadcasting
  module Views
    class Welcome < MusicPleaseBroadcasting::ViewController
      configure do |config|
        config.template = "welcome"
      end
    end
  end
end
