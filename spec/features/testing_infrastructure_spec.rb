require_relative '../../app.rb'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
  scenario 'players can fill in their names (in a form), submit that form, and see those names on-screen' do
    sign_in_and_play

    expect(page).to have_content 'Chris' && 'Jess'
  end

  scenario 'Player 1 can see player 2s hitpoints' do
    visit('/play')
    expect(page).to have_content("100")
  end

  scenario 'Will show name next to health' do
  sign_in_and_play
  expect(page).to have_content("Chris Hitpoints: 100")
  end
end