class Board
  attr_reader :board  
  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def update_board(player, option)
    @board[option - 1] = player
  end
end

class Player
  attr_reader :code  
  def initialize(code)
    @code = code
  end
end
