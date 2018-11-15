require 'game'

  describe Game do
  	subject(:game) {described_class.new(player_1, player_2)}
  	let(:player_1) {double :player}
  	let(:player_2) {double :player}


    it "should be able to attack a player" do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end

    it "should retrieve the first player" do
    	expect(game.player_1).to eq(player_1)
    end

    it "should retrieve the last player" do
    	expect(game.player_2).to eq(player_2)
    end
  end

