class Player

attr_reader :name, :image
attr_accessor :hp

  def initialize(name, image, hp = 100)
    @image = image
    @name = name
    @hp = hp
  end

end
