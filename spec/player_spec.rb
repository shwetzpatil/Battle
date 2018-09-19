require 'player'

describe Player do
  subject(:player1) { Player.new('Shweta') }
  describe '#name' do
    it 'returns players name' do
      expect(player1.name).to eq('Shweta')
    end
  end

  describe '#points' do
    it 'sets to new Hit Points 100' do
      expect(player1.points).to eq(described_class::DEFAULT_POINTS)
    end
  end

  describe '#receive_damage' do
    it 'Shweta attacking Seb makes Seb lose 10 points' do
      player1.receive_damage
      expect(player1.points).to eq (described_class::DEFAULT_POINTS - 10)
    end
  end

end