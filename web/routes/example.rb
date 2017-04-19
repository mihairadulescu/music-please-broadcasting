# Define your routes like this:

class MusicPleaseBroadcasting::Application
  route "pagehook" do |r|
    r.is do
      r.get do
        r.params
      end
    end
  end
end
