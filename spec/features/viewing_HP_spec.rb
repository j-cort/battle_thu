feature 'View Hit Points' do 
  
  scenario 'Viewing Player 1 Hit Points' do 
    sign_in_and_play
    expect(page).to have_content 'James HP: 60'
  end

end