require_relative "slideable"
require_relative "piece"

class Rook < Piece
  include Slideable

  def initialize(color, board, pos)
    super
    @symbol = :R
  end

  def move_dirs
    p horizontal_dirs(@pos)
  end



end


#do we need readers for subclasses if we inherit from parent
