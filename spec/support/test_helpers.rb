module TestHelpers
  module_function

  def app
    MusicPleaseBroadcasting::Application.app
  end

  def rom
    MusicPleaseBroadcasting::Container["persistence.rom"]
  end

  def db_connection
    rom.gateways[:default].connection
  end
end
