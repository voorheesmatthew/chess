require_relative "piece.rb"

module Slideable

  def horizontal_dirs

  end

  def diagonal_dirs

  end

  def moves

  end

  private

  HORIZONTAL_DIRS = [[0,1],[0,-1],[1,0],[-1,0]]
  DIAGONAL_DIRS = [[1,1],[1,-1],[-1,-1],[-1,1]]

  def move_dirs

  end

  def grow_unblocked_moves_in_dir(dx, dy)
  end
end


class Rook < Piece
  include Slideable

  def symbol
    "♖"
  end



  protected

  def move_dirs

  end

end

class Bishop < Piece
  include Slideable

  def symbol
    "♗"
  end

  protected

  def move_dirs

  end

end

class Queen < Piece
  include Slideable

  def symbol
    "♕"
  end

  protected

  def move_dirs

  end

end
