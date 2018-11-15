feature 'player hitpoints' do
	scenario 'player 1 can view player 2 hitpoints' do
  	sign_in_and_play
  	expect(page).to have_content("Ajay - HP: 60")
	end
	scenario 'player 2 can view player 1 hitpoints' do
  	sign_in_and_play
  	expect(page).to have_content("Max - HP: 60")
	end
end