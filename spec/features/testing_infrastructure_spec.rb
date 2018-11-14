feature 'entering player names' do
  scenario 'Users can enter their names' do
  	player_1 = "Max"
  	player_2 = "Ajay"
  	visit('/')
  	fill_in('player_1_name', with: "Max")
  	fill_in('player_2_name', with: "Ajay")
  	click_on('submit')
  	expect(page).to have_content("Max vs. Ajay")
  end
end

feature 'player hitpoints' do
	scenario 'player 1 can view player 2 hitpoints' do
		player_1 = "Max"
  	player_2 = "Ajay"
  	visit('/')
  	fill_in('player_1_name', with: "Max")
  	fill_in('player_2_name', with: "Ajay")
  	click_on('submit')
  	expect(page).to have_content("Ajay: 100HP")
	end
end