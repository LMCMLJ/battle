require_relative '../lib/player'

describe Player do

  it "Should return a player's name" do
    expect(player1.name). to eq "Mike"
  end


end
