require 'game'

describe Game do

  before :each do
    @game = Game.new("Mike", "http://tinyurl.com/jv3o4kg", "Kath", "http://tinyurl.com/jv3o4kg")
    @p1 = double(:p1)
    allow(@p1).to receive(:hp).and_return(90)
    allow(@p1).to receive(:hp=).and_return(90)
  end

  describe '#attack' do
    it 'lowers input players hp' do
      @game.attack
      expect(@p1.hp).to eq(90)
    end
  end
end
