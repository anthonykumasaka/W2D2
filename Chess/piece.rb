require_relative "board"


class Piece
  attr_reader :color, :board
  attr_accessor :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def moves
    # get total moves per subclass in arr, iterate through, determine which move is valid
    self.move_dirs
  end

  def empty?
    @board[@pos].empty?
  end

  def symbol
  end

  def to_s

  end

  private

  def move_into_check?(end_pos)
  end
end
