feature 'player attacking' do
	scenario 'player 1 can attack player 2' do
		sign_in_and_play
		click_button('attack')
		expect(page).to have_content("Max attacked Ajay")
	end

	scenario 'player one attacks' do
		sign_in_and_play
		attack
		expect(page).not_to have_content("Ajay - HP: 60")
		expect(page).to have_content("Ajay - HP: 50")
		expect(page).to have_content("Max - HP: 60")
	end

	scenario 'player two attacked' do
		sign_in_and_play
		attack
		attack
		expect(page).not_to have_content("Max - HP: 60")
		expect(page).to have_content("Ajay - HP: 50")
		expect(page).to have_content("Max - HP: 50")
	end
	
end

