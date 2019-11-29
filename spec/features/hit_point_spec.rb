feature 'Tests hit points' do
scenario "returns player two's hit points" do
  sign_in_and_play
  expect(page). to have_content "Player 2: 100 hit points"
end
end
