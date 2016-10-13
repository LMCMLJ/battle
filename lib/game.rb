class Game

  attr_reader :p1, :p2

  def initialize(p1, p2)
    @p1 = Player.new(p1)
    @p2 = Player.new(p2)
  end

  def attack(player)
    if player == 'p1'
      @p1.hp -= 10
    else
      @p2.hp -= 10
    end
  end

end
