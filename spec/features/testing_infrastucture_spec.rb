
feature 'Testing name setup' do
  scenario 'can load page content' do
    visit('/')
    expect(page).to have_content 'Please enter your name'
  end
end

feature 'Testing input on main page' do
  scenario 'can input names on home page' do
    visit('/')
    fill_in 'name1', with: 'Player 1'
    fill_in 'name2', with: 'Player 2'
  end
end


feature 'Testing main page submit can be clicked' do
  scenario 'names are inputted and form can be submitted' do
    visit('/')
    fill_in 'name1', with: 'Player 1'
    fill_in 'name2', with: 'Player 2'
    find_button('Submit').click
  end
end


feature 'Testing second page can display 2 player names' do
  scenario 'names have been submitted on first page' do
    visit('/names')
    expect(page).to have_content 'Player 1 is:'
  end
end
