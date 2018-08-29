require_relative "piece.rb"

class Knight < Piece
  # include Stepable

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

  def initialize(color, board, pos)
    super
  end

  # include Stepable

  def symbol
    "♔"
  end

  protected

  def move_dirs
  end

end

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
