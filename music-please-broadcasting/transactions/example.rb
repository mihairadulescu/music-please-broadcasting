require "music_please_broadcasting/transactions"

MusicPleaseBroadcasting::Transactions.define do |t|
  # Define your dry-transaction objects here:
  #
  # t.define "transactions.users.sign_up" do
  #   step :persist, with: "users.operations.sign_up"
  #   # other steps here
  # end
end
