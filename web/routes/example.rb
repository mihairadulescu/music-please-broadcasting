# Define your routes like this:

class MusicPleaseBroadcasting::Application
  route "pagehook" do |r|
    r.is do
      r.get do
        'facebook hook verification'
      end
    end
  end
end
