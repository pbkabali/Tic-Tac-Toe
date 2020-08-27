class Board
  attr_reader :board
  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @count = 0
  end

  def update_board(player, option)
    @count += 1
    @board[option - 1] = player
  end

  def winner_pattern
    [[@board[0], @board[1], @board[2]],
     [@board[6], @board[7], @board[8]],
     [@board[3], @board[4], @board[5]],
     [@board[0], @board[3], @board[6]],
     [@board[1], @board[4], @board[7]],
     [@board[2], @board[5], @board[8]],
     [@board[0], @board[4], @board[8]],
     [@board[2], @board[4], @board[6]]]
  end

  def winner(board)
    board.any?(%w[X X X]) || board.any?(%w[O O O])
  end

  def draw
    @count == 9
  end
end
