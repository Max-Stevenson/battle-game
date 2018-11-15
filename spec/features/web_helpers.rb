def sign_in_and_play
	visit('/')
  fill_in('player_1_name', with: "Max")
  fill_in('player_2_name', with: "Ajay")
  click_on('submit')
end
def attack
  click_button('attack')
  click_button('return')
end