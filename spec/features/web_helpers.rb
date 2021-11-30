def sign_in_and_play
  visit('/')
  name1 = 'Chris'
  name2 = 'Jess'

  fill_in 'name1', with: name1
  fill_in 'name2', with: name2
  click_on 'Submit'
end