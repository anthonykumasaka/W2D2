require 'byebug'

module Slideable
  HORIZONTAL_DIRS = [
    [0, 1],
    [0, -1],
    [1, 0],
    [-1, 0]
  ]

  DIAGONAL_DIRS = [
    [1, -1],
    [-1, 1],
    [-1, -1],
    [1, 1]
  ]

  def horizontal_dirs(pos)
    moves = []

    HORIZONTAL_DIRS.each_with_index do |dir, idx|   #dir = [0,1]
      debugger
      reset_pos = pos

      until invalid_move(reset_pos)
        possible_move = [dir[0] + reset_pos[0], dir[1] + reset_pos[1]]
        moves << possible_move
        reset_pos = moves.last
      end
    end

    return moves
  end

  def diagonal_dirs(pos)
    moves = []

    DIAGONAL_DIRS.each_with_index do |dir, idx|
      possible_move = [dir[0] + pos[0], dir[1] + pos[1]]

      until invalid_move(possible_move)
        possible_move = [dir[0] + pos[0], dir[1] + pos[1]]
        moves << possible_move
      end
    end
    p moves
    return moves
  end

  def invalid_move(pos)
    !pos[0].between?(0, 7) || !pos[1].between?(0, 7) #|| (@board[pos].color  == self.color)
  end


end
