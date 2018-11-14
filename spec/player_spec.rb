require 'player'

	describe Player do
		context '#name' do
			it 'should return the player name' do
				player = Player.new('Max')

				expect(player.name).to eq('Max')
			end
		end
	end