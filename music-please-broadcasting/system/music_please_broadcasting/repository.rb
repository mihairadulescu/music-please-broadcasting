require "rom-repository"
require "music_please_broadcasting/container"
require "music_please_broadcasting/import"

MusicPleaseBroadcasting::Container.boot! :rom

module MusicPleaseBroadcasting
  class Repository < ROM::Repository::Root
    include MusicPleaseBroadcasting::Import.args["persistence.rom"]
  end
end
