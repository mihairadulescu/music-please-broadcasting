require "byebug" if ENV["RACK_ENV"] == "development"
require "pry" if ENV["RACK_ENV"] == "development"

require_relative "music_please_broadcasting/container"

MusicPleaseBroadcasting::Container.finalize!

require "music_please_broadcasting/application"

require "music_please_broadcasting/transactions"
MusicPleaseBroadcasting::Container.require "transactions/**/*.rb"
