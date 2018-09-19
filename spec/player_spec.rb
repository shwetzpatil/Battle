require 'player'

describe Player do
  describe '#name' do
  subject(:player1) { Player.new('Shweta') }

    it 'returns players name' do
      expect(player1.name).to eq('Shweta')
    end
  end
end