require '../bin/main.rb'

describe Main do
    describe '#get_input' do
      it 'takes the players input from the keyboard' do
        board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        expect(get_input("player1", 'X', board)). to eql()
      end
    end
end