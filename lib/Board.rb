require_relative 'null_piece'
require_relative "pawn"
require_relative "stepable"
require_relative "slideable"
# Testing an update
class Board

  attr_accessor :rows
  def initialize
    @sentinel = NullPiece.instance
    @rows = Array.new(8) { Array.new(8, @sentinel) }
    set_board
  end

  def [](pos)
    row, col = pos
    @rows[row][col]
  end

  def []=(pos, val)
    row, col = pos
    @rows[row][col] = val
  end

  def move_piece(color, start_pos, end_pos)
    if @rows[start_pos.first][start_pos.last].is_a?(NullPiece)
      raise "No piece at #{start_pos}"
    elsif !valid_pos?(end_pos)
      raise "Not a valid position"
    end
    @rows[end_pos.first][end_pos.last] = @rows[start_pos.first][start_pos.last]
    @rows[start_pos.first][start_pos.last] = NullPiece.instance
  end

  def valid_pos?(pos)
    if pos.first < 0 || pos.first > 7
      return false
    elsif pos.last < 0 || pos.last > 7
      return false
    end 
    return true if @rows[pos.first][pos.last].is_a?(NullPiece)
    false
  end

  def add_piece(piece, pos)
  end

  def checkmate?(color)
  end

  def in_check?(color)
  end

  def find_king(color)
  end

  def pieces
  end

  def dup
  end

  def move_piece!(color, start_pos, end_pos)
  end

  # private

  def set_board
    #Sets pawn rows
    [:green, :purple].each do |color|
      color == :green ? row = 1 : row = 6

      @rows[row].each_index do |col|
        pos = row, col
        p pos
        @rows[row][col] = Pawn.new(color, @rows, pos) # How to access our subclass??? Works for assigning value to space.
        p @rows[row][col]
      end

    end

    #Sets First and last rows
    [:green, :purple].each do |color|
      color == :green ? row = 0 : row = 7
      [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook].each_with_index do |cl_name, col|
        pos = row, col
        @rows[row][col] = cl_name.new(color, @rows, pos) # How to access our subclass??? Works for assigning value to space.
      end
    end


  end
end
