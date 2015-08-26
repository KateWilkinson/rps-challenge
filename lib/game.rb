require_relative 'player'
require_relative 'opponent'

class Game

  attr_reader :player, :opponent

  def initialize player, opponent
    @player = player
    @opponent = opponent
  end

  def outcome
    if draw?
      'It\'s a draw!'
    else
      winner? ? 'You won!!' : 'The computer beat you..'
    end
  end

  def draw?
    @opponent.weapon == @player.weapon
  end

  def winner?
    if @opponent.weapon == 'rock'
      @player.weapon == 'paper'
    elsif @opponent.weapon == 'paper'
      @player.weapon == 'scissors'
    elsif @opponent.weapon == 'scissors'
      @player.weapon == 'rock'
    end
  end

end