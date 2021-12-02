require 'player'

describe Player do
  subject(:james) { Player.new('James') }
  subject(:chris) { Player.new('Chris') }

  it 'returns player name' do
    expect(james.name).to eq 'James'
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(james.hp).to eq described_class::DEFAULT_HP
    end
  end

  # describe '#attack' do
  #   it 'damages the player' do
  #     expect(chris).to receive(:receive_damage)
  #     james.attack(chris)
  #   end
  # end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { james.receive_damage }.to change { james.hp }.by(-10)
    end
  end
  
end