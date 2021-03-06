require_relative "slideable"
require_relative "piece"

class Bishop < Piece
  include Slidable

  def initialize(color, board, pos)
    super
    @symbol = :B
  end

  def move_dirs
    diagonal_dirs
  end

end
