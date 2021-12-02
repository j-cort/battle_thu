require 'game'

describe Game do
  let(:game) { described_class.new }
  let(:james) { Player.new('James') }
  let(:chris) { Player.new('Chris') }

  describe '#attack' do
    it 'damages the player' do
      expect(chris).to receive(:receive_damage)
      game.attack(chris)
    end
  end

end