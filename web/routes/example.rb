# Define your routes like this:

class MusicPleaseBroadcasting::Application
  route "pagehook" do |r|
    r.is do
      r.get do
        test = r.params
        test['hub.challenge']
      end
    end
  end
end
