feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content "Hello Battle!"
  end
end

feature 'Enter names' do
  scenario 'players can fill in and submit their names' do
    sign_in_and_play
    expect(page). to have_content 'Juan vs. Samantha'
  end
end
