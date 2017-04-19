require "slim"
require "dry-view"
require "music_please_broadcasting/container"

module MusicPleaseBroadcasting
  class ViewController < Dry::View::Controller
    configure do |config|
      config.paths = [Container.root.join("web/templates")]
      config.context = Container["view_context"]
      config.layout = "application"
    end
  end
end
