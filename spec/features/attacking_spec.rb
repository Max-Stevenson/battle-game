feature 'player attacking' do
	scenario 'player 1 can attack player 2' do
		sign_in_and_play
		click_button('attack')
		expect(page).to have_content("Max attacked Ajay")
	end
end