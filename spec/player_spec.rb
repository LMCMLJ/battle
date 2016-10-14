describe Player do

  before :each do
    @player = Player.new('Mike', "http://tinyurl.com/jv3o4kg")
  end

  it "Should return a player's name" do
    expect(@player.name). to eq "Mike"
  end


end
