# Define your routes like this:

class MusicPleaseBroadcasting::Application
  route "pagehook" do |r|
    r.is do
      r.get do
        test = r.params
        test['hub.challenge']
      end

      r.post do
        out_file = File.new("out.txt", "w")
        out_file.puts r.params.to_s
        out_file.close
        ''
      end
    end
  end

  route "pagehook-preview" do
    r.is do
      r.get do
        File.read("out.txt")
      end
    end
  end
end
