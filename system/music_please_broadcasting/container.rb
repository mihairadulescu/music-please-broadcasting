require "dry/web/umbrella"
require_relative "settings"

module MusicPleaseBroadcasting
  class Container < Dry::Web::Umbrella
    configure do
      config.name = :music_please_broadcasting
      config.default_namespace = "music_please_broadcasting"
      config.settings_loader = MusicPleaseBroadcasting::Settings
      config.listeners = true

      config.auto_register = %w[
        lib/music_please_broadcasting
      ]
    end

    load_paths! "lib", "system"

    def self.settings
      config.settings
    end
  end
end
