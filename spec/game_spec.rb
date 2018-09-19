require 'game'

describe Game do
  let(:player2) { double :player2 }

  describe '#attack'
    it 'if player2 is attacked, player2 receives damage' do
      expect(player2).to receive :receive_damage
      subject.attack(player2)
    end

end