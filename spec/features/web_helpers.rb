def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Juan'
  fill_in :player_2_name, with: 'Samantha'
  click_button 'Submit'
end
