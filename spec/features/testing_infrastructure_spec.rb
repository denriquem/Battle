feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content "Hello Battle!"
  end
end

feature 'Enter names' do
  scenario 'players can fill in and submit their names' do
    visit('/')
    fill_in :player_1_name, with: 'Juan'
    fill_in :player_2_name, with: 'Samantha'
    click_button 'Submit'
    expect(page). to have_content 'Juan vs. Samantha'
  end
end
