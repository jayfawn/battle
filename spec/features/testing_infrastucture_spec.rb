
feature 'Testing name setup' do
  scenario 'can load page content' do
    visit('/')
    expect(page).to have_content 'Please enter your name'
  end
end

feature 'Testing input on main page' do
  scenario 'can input names on home page' do
    visit('/')
    fill_in 'player1', with: 'Player 1'
    fill_in 'player2', with: 'Player 2'
  end
end

feature 'Testing main page submit can be clicked' do
  scenario 'names are inputted and form can be submitted' do
    sign_in_and_play
  end
end


feature 'Testing second page' do
  scenario '2 names have been submitted on first page' do
    sign_in_and_play
    expect(page).to have_content 'Join Player 1 in an epic journey against their nemesis: Player 2'
  end

  scenario 'hit points appear on 2nd page for each player' do
    sign_in_and_play
    expect(page).to have_content 'Player 1 Hit points left:'
  end
end
