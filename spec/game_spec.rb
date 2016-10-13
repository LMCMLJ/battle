require 'game'

describe Game do

  before :each do
    @game = Game.new
    @p1 = double(:p1)
    allow(@p1).to receive(:hp).and_return(90)
    allow(@p1).to receive(:hp=).and_return(90)
  end

  describe '#attack' do
    it 'lowers input players hp' do
      @game.attack(@p1)
      expect(@p1.hp).to eq(90)
    end
  end
end
