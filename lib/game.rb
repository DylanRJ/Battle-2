require_relative 'player'

class Game

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(target, damage)
    target.take_hit(damage)
  end

  

end