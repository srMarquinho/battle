require 'player'

describe Player do
  
  subject(:player) { described_class.new('paul') }

  it "returns the name of the player" do
    expect(player.name).to respond_to (:upcase)
  end

end