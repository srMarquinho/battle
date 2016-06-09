class Player

  attr_reader :name, :hit_points

  DEFAULT_HIT_POINTS = 50

  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @hit_points = hit_points
  	@name = name
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def receive_damage
    @hit_points -= 10
  end

end
