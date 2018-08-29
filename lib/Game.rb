require_relative 'display'
require_relative 'player'
require_relative 'board'

class Game
  def initialize
    @board = board 
    @display = display 
    @players = players
    @current_player = current_player
  end
  
  def play 
  end 
  
  private 
  def notify_players 
  end 
  
  def swap_turn!
  end 
end 