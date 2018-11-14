feature 'entering player names' do
  scenario 'Users can enter their names' do
  	sign_in_and_play
  	expect(page).to have_content("Max vs. Ajay")
  end
end