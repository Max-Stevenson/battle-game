require 'player'

	describe Player do
		player_1 = Player.new('Max')
		player_2 = Player.new('Ajay
			')
		context '#name' do
			it 'should return the player name' do
				expect(player_1.name).to eq('Max')
			end
		end

		context '#Hitpoints' do
			it 'should return the player hitpoints' do
				expect(player_1.hitpoints).to eq(described_class::DEFAULT_HP)
			end
		end

		context '#attack' do
			it 'damages the opposite player' do
				expect(player_2).to receive(:receive_damage)
				player_1.attack(player_2)
			end
		end

		context '#receive_damage' do
			it 'reduces HP of the player' do
				expect { player_2.receive_damage }.to change { player_2.hitpoints }.by(-10)
			end
		end
	end