feature 'Entering Player Names' do 
  
  scenario 'Enter Player 1 and 2 Names' do 
    sign_in_and_play
    expect(page).to have_content 'James vs Chris'
  end

end