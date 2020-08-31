require_relative '../lib/game_logic.rb'

describe Board do
  describe '#initialize' do
    it 'sets the default board values' do
      b = Board.new
      expect(b.board). to eql([1, 2, 3, 4, 5, 6, 7, 8, 9])
    end
  end

  describe '#update_board' do
    it 'updates the items in the board' do
      b = Board.new
      b.update_board('X', 6)
      expect(b.board). to eql([1, 2, 3, 4, 5, 'X', 7, 8, 9])
    end
  end

  describe '#winner_pattern' do
    it 'returns the winner pattern states' do
      b = Board.new
      expect(b.winner_pattern). to eql([[1, 2, 3], [7, 8, 9], [4, 5, 6], [1, 4, 7],
                                        [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]])
    end

    it 'returns the right pattern after updating the board' do
      b = Board.new
      b.update_board('X', 1)
      b.update_board('X', 4)
      b.update_board('X', 7)
      expect(b.winner_pattern). to eql([['X', 2, 3], ['X', 8, 9], ['X', 5, 6], ['X', 'X', 'X'],
        [2, 5, 8], [3, 6, 9], ['X', 5, 9], [3, 5, 'X']])
    end
  end

  describe '#winner' do
    it 'returns true if there is a winning pattern on the board' do
      b = Board.new
      b.update_board('X', 3)
      b.update_board('X', 5)
      b.update_board('X', 7)
      expect(b.winner(b.winner_pattern)). to be_truthy
    end

    it 'returns false if there is no winning pattern on the board' do
      b = Board.new
      b.update_board('X', 1)
      b.update_board('X', 5)
      b.update_board('X', 7)
      expect(b.winner(b.winner_pattern)). to be_falsy
    end
  end

  describe '#draw' do
    it 'returns true if the board is updated 9 times' do
      b = Board.new
      b.update_board('X', 1)
      b.update_board('X', 2)
      b.update_board('X', 3)
      b.update_board('X', 4)
      b.update_board('X', 5)
      b.update_board('X', 6)
      b.update_board('X', 7)
      b.update_board('X', 8)
      b.update_board('X', 9)
      expect(b.draw). to be_truthy
    end
    it 'return false if the board is not updated upto 9 times' do
      b = Board.new
      b.update_board('X', 1)
      b.update_board('X', 2)
      expect(b.draw). to be_falsy
    end
  end
end
