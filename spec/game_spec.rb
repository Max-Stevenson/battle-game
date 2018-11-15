require 'game'

  describe Game do
    player_2 = Player.new('Ajay')
    it "should be able to attack a player" do
      expect(player_2).to receive(:receive_damage)
      Game.new.attack(player_2)
    end
  end