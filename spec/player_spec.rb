require_relative '../lib/player'


describe "player" do
  context "when initialized" do
    subject(:player) { Player.new("John", "Doe", "X") }
    it "returns a object" do
      expect(player).to be_a Player
    end
  end
end