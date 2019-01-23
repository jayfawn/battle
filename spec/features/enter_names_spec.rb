feature 'Testing landing page' do
  scenario 'can load page content' do
    visit('/')
    expect(page).to have_content 'Please enter your name'
  end

  scenario 'can input names on home page' do
    visit('/')
    fill_in 'player1', with: 'Player 1'
    fill_in 'player2', with: 'Player 2'
  end

  scenario 'names are inputted and form can be submitted' do
    sign_in_and_play
  end
end
