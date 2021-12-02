feature 'Attack Player' do 
  
  scenario 'attacking player 2' do 
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content 'James attacked Chris'
  end

  scenario 'reducing player 2 HP' do 
    sign_in_and_play
    click_button "Attack"
    click_link "OK"
    expect(page).not_to have_content 'Chris HP: 60'
    expect(page).to have_content 'Chris HP: 50'
  end

end