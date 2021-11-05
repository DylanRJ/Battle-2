require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:target) { double("target") }
  let(:player_1) { double(:player_1) }
  let(:player_2) { double(:player_2) }


  it "Game.new accepts the first instance of the Player class" do
    expect(game.player_1).to eq player_1
  end

  it "Game.new accepts the second instance of the Player class" do
    expect(game.player_2).to eq player_2
  end

  describe "#attack" do
    it "calls the take_hit method on the target" do
      expect(target).to receive(:take_hit).with(10)
      game.attack(target, 10)
    end
  end

end