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

  def winner
    board_patterns = [[@board[0], @board[1], @board[2]],
                      [@board[3], @board[4], @board[5]],
                      [@board[6], @board[7], @board[8]],
                      [@board[0], @board[3], @board[6]],
                      [@board[1], @board[4], @board[7]],
                      [@board[2], @board[5], @board[8]],
                      [@board[0], @board[4], @board[8]],
                      [@board[2], @board[4], @board[6]]]
   board_patterns.any?(['X','X','X']) || board_patterns.any?(['O','O','O'])
  end

  def draw
    @count == 9
  end
end

class Player
  attr_reader :code  
  def initialize(code)
    @code = code
  end
end
