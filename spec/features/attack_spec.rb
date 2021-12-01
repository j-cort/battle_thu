feature 'Attack Player' do 
  
  scenario 'Attacking Player 2' do 
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'James attacked Chris'
  end

end