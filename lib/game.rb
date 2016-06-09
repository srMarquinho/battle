require_relative 'player'

class Game

  def attack(opponent)
    opponent.receive_damage
  end

end