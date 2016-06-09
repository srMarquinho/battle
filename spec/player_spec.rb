require 'player'

describe Player do

  subject(:player_1) { described_class.new('name1') }
  subject(:player_2) { described_class.new('name2') }

  describe '#name' do
    it 'returns the name' do
      expect(player_1.name).to eq 'name1'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(player_1.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { player_1.receive_damage }.to change { player_1.hit_points }.by(-10)
    end
  end
end
