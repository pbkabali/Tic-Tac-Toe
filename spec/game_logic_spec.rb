require '../lib/game_logic.rb'

describe Board do
  describe '#update_board' do
    it 'updates the items in the board' do
      b = Board.new
      b.update_board("X", 6)
      expect(b.board). to eql([1, 2, 3, 4, 5, "X", 7, 8, 9])
    end
  end

  describe '#winner_pattern' do
    it 'returns the winner pattern states' do
      b = Board.new
      expect(b.winner_pattern). to eql([[1, 2, 3], [7, 8, 9], [4, 5, 6],[1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]])
    end
  end

  describe '#winner' do
    it 'returns true if there is a winning pattern on the board' do
      b = Board.new
      b.update_board("X", 3)
      b.update_board("X", 5)
      b.update_board("X", 7)
      expect(b.winner(b.winner_pattern)). to eql(true)
    end
  end

  describe '#winner' do
    it 'returns false if there is no winning pattern on the board' do
      b = Board.new
      b.update_board("X", 1)
      b.update_board("X", 5)
      b.update_board("X", 7)
      expect(b.winner(b.winner_pattern)). to eql(false)
    end
  end
end

