class Player
  DEFAULT_HP = 60
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end
  
  # def attack(player)
  #   player.receive_damage
  # end

  def receive_damage
    @hp -= 10
  end

end