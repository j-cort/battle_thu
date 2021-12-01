feature 'Entering Player Names' do 
  
  scenario 'Enter Player 1 and 2 Names' do 
    visit '/'
    fill_in 'player_1', with: 'James'
    fill_in 'player_2', with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content 'James vs Chris'
  end

end