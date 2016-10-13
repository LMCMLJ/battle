class Game

  attr_reader :p1, :p2

  def initialize(name1, name2)
    @p1 = Player.new(name1)
    @p2 = Player.new(name2)
    @turn_taker = @p1
  end

  def attack
    if @turn_taker == 'p1'
      @p1.hp -= 10
    else
      @p2.hp -= 10
    end
  end

  def switch_turn
    if @turn_taker == @p1
      @turn_taker = @p2
    else
      @turn_taker = @p1
    end
  end
end
