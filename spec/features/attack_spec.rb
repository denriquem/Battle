feature 'Attack' do
scenario 'Attacks player 2' do
sign_in_and_play
click_button "Attack"
# expect(page). to have_current_path "/attack%20page"
expect(page). to have_content "Player 2 has been attacked"
end
end
