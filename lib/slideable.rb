require_relative "piece.rb"

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

module Slideable

  def horizontal_dirs
    @board.rows.each_index do |x|
      row.each_index do |y|
        if x == self.pos.first && y != self.pos.last
          HORIZONTAL_DIRS << [x,y]
        elsif y == self.pos.last && x != self.pos.first
          HORIZONTAL_DIRS << [x,y]
        end
      end
    end
  end

  def diagonal_dirs
    start = self.pos
    x = start.first
    y = start.last

    until x == 0 || y == 0
      p x
      p y
      DIAGONAL_DIRS << [x-=1, y-=1]
    end
    x = start.first
    y = start.last

    until x == 7 || y == 7
      p x
      p y
      DIAGONAL_DIRS << [x+=1,y+=1]
    end
    x = start.first
    y = start.last

    until x == 0 || y == 7
      p x
      p y
      DIAGONAL_DIRS << [x-=1, y+=1]
    end
    x = start.first
    y = start.last

    until x == 7 || y == 0
      p x
      p y
      DIAGONAL_DIRS << [x+=1, y-=1]
    end
  end

  def moves

  end

  private

  HORIZONTAL_DIRS = []
  DIAGONAL_DIRS = []

  def move_dirs
    
  end

  def grow_unblocked_moves_in_dir(dx, dy)
  end
end
