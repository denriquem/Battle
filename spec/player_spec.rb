require 'player'

  describe Player do
    let (:test_player) {Player.new("name")}

    it "stores name of the player" do
      expect(test_player.name).to eq("name")
  end

  let (:jim) {Player.new("Jim")}
  let (:mittens) {Player.new("Mittens")}

   describe "#hit_points" do
  it "Returns player's instance hit points" do
    expect(jim.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end
end

describe "#attack" do
  it 'damages the player' do
    expect(mittens). to receive(:receive_damage)
    jim.attack(mittens)
  end
end


describe "#receive_damage" do
  it "returns the reduced hit points of player after being attacked" do
    expect{ jim.receive_damage }.to change{ jim.hit_points }.by {-10}
  end
end

end
