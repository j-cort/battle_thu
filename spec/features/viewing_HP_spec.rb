feature 'View Hit Points' do 
  
  scenario 'Viewing Player 1 Hit Points' do 
    visit '/'
    fill_in 'player_1', with: 'James'
    fill_in 'player_2', with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content 'James HP: 10'
  end

end