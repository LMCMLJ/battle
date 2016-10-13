class Game

  attr_reader :p1, :p2

  def initialize(name1, img, name2, img2)
    @p1 = Player.new(name1, img)
    @p2 = Player.new(name2, img2)
  end

  def attack
    @p2.hp -= 10
  end

  def switch_turn
    temp_p2 = @p2
    @p2 = @p1
    @p1 = temp_p2
  end
end
