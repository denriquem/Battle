class Player
  attr_reader :name
  DEFAULT_HIT_POINTS = 100

  player = Player.new

  def initialize(name, hit_points=DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def hit_points
    @hit_points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end

end
