require_relative 'cursor'
require_relative 'board'
require 'colorize'
# require 'colorized_string'

class Display

  attr_reader :render, :cursor

  def initialize(board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    @board.rows.each_with_index do |row, row_i|
      row.each_with_index do |el, col|
        # print el.symbol.colorize(:black ).colorize( :background => :red) if @cursor.cursor_pos == [row_i,col]
        if el.color == :green && @cursor.cursor_pos == [row_i,col]
          print el.symbol.colorize(:color => :green, :background => :black)
        elsif el.color == :green
          print el.symbol.colorize(:color => :green, :background => :white)
        elsif el.color == :purple && @cursor.cursor_pos == [row_i,col]
          print el.symbol.colorize(:color => :magenta, :background => :black)
        elsif el.color == :purple
          print el.symbol.colorize(:color => :magenta, :background => :white)
        elsif el.is_a?(NullPiece) && @cursor.cursor_pos == [row_i,col]
          print el.symbol.colorize(:color => :white, :background => :black)
        elsif el.is_a?(NullPiece)
          print el.symbol.colorize(:color => :white, :background => :white)
        end
      end
      puts "\n"
    end
    nil
  end

  def cursor?(pos)
    # puts pos
    # if pos == @cursor.cursor_pos # [0,0]
    #   return true
    # end
    # false
  end

  def inspect
    ""
  end

end

if __FILE__ == $PROGRAM_NAME
  board = Board.new
  display = Display.new(board)

  while true
    # system('clear')
    display.cursor.get_input
    display.render
    p display.cursor.cursor_pos
  end

end
