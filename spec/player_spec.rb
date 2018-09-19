require 'player'

describe Player do
  it 'returns players name' do
    player = Player.new('Shweta')
    expect(player.name).to eq('Shweta')
  end
end