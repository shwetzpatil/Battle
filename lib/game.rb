require_relative 'player'

class Game

  def attack(victim)
    victim.receive_damage
  end

end