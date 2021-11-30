feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working!'
  end
  scenario 'players can fill in their names (in a form), submit that form, and see those names on-screen' do
    visit('/')
    name1 = 'Chris'
    name2 = 'Jess'

    fill_in 'name1', with: name1
    fill_in 'name2', with: name2
    click_on 'Submit'

    expect(page).to have_content 'Chris' && 'Jess'
  end
end