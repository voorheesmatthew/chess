require_relative "piece.rb"

module Stepable

  def initialize(color, board, pos)
    super
  end

  def moves
  end

  private
  #does this take an arg?
  def move_diffs
  end
end

class Knight < Piece
  include Stepable

  def initialize(color, board, pos)
    super
  end

  def symbol
    "♘"
  end

  protected

  def move_dirs
  end

end

class King < Piece
  include Stepable

  def initialize(color, board, pos)
    super
  end


  def symbol
    "♔"
  end

  protected

  def move_dirs
  end

end
