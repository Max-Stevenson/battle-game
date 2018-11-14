feature 'player hitpoints' do
	scenario 'player 1 can view player 2 hitpoints' do
  	sign_in_and_play
  	expect(page).to have_content("Ajay - HP: 100")
	end
end