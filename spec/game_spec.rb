require 'game'

describe Game do
  let(:james) { Player.new('James') }
  let(:chris) { Player.new('Chris') }
  let(:game) { Game.new(james, chris) }

  describe '#initialize' do
    it 'accepts player_1 and player_2 as attributes' do
      expect(game).to have_attributes(:player_1 => james, :player_2 => chris)
    end
  end 

  describe '#attack' do
    it 'damages the player' do
      expect(chris).to receive(:receive_damage)
      game.attack(chris)
    end
  end

 

end