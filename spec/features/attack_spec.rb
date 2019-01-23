feature 'Attacking' do
  scenario 'ability for player1 to attack player2' do
    sign_in_and_play
    find_button('Attack').click
  end

  scenario 'confirmation player1 has attacked player2' do
    sign_in_and_play
    find_button('Attack').click
    expect(page).to have_content 'Player 1 has attacked Player 2'
  end
end
