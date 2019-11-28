require 'player'
  describe Player do
    let (:test_player) {Player.new("name")}
  it "stores name of the player" do
      expect(test_player.name).to eq("name")

  end
end
