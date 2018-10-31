require_relative "board"
require_relative "cursor"

require 'colorize'

class Display
  # DISPLAY_HASH = {
  #   nil => " ",
  #
  # }

  def initialize(board)   #board is a board Obj
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def render
    #iterate through each specific row/position and see if it matches the cursor pos, change color
    @board.grid.each_with_index do |row, i|
      puts "\n"
      row.each_with_index do |square, j|
        if [i, j] == @cursor.cursor_pos
          print square.colorize(:blue) + " "
        else
          print square + " "
        end

      end
    end
  end



  def test_cursor
    #take user input (cursor.get_input) and render board
    #indefinite loop until user input is :ctrl_c
    loop do
      @cursor.get_input
      render
      puts "                        "
    end
  end

end





#
# KEYS = { :s => "ship"}
# def render
#   (0..@grid.length).each do |row_idx|
#     (0..@grid.length).each do |col_idx|
#       @grid[row_idx][col_idx].to_s
#     end
# end
