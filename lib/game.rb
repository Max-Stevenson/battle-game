class Game
  attr_reader :current_player, :opponent, :players
	def initialize (player_1, player_2)
    @players = [player_1, player_2]
    @current_player = 1
    @opponent = 0
	end

	def player_1
		@players.first
	end

	def player_2
		@players.last
  end

  def switch
    current_player == 0 ? @current_player = 1 : @current_player = 0
    opponent == 0 ? @opponent = 1 : @opponent = 0
  end

  def attack (enemy)
    enemy.receive_damage
    switch
	end
end