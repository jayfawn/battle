
feature 'Testing game page' do
  scenario '2 names have been submitted on landing page' do
    sign_in_and_play
    expect(page).to have_content 'Join Player 1 in an epic journey against their nemesis: Player 2'
  end

  scenario 'hit points appear on 2nd page for each player' do
    sign_in_and_play
    expect(page).to have_content 'Player 2 Hit points left:'
  end
end
