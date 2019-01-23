feature 'Attacking' do
  scenario 'ability for player1 to attack player2' do
    sign_in_and_play
    click_link 'Attack'
  end

  scenario 'confirmation player1 has attacked player2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Player 1 has attacked Player 2'
  end
end
