feature 'Attack' do
  scenario 'Attacks player 2' do
    sign_in_and_play
    click_button "Attack"
# expect(page). to have_current_path "/attack%20page"
  expect(page). to have_content "Player 2 has been attacked"
  end
end

feature "Attacking" do
  scenario 'Reduces player 2 hit points by 10 'do
  sign_in_and_play
  click_button "Attack"
  expect(page). not_to have_content 'Player 2: 100 hit points'
  expect(page). not_to have_content 'Player 2: 90 hit points'
  end 
end
