require_relative '../lib/player.rb'

describe Board do
  describe '#initialize' do
    it 'sets the player code' do
      p = Player.new('X')
      expect(p.code). to eql('X')
    end
  end
end
