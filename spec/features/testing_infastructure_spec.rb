feature 'Accessing the page' do 
  
  scenario 'Testing infastructure working' do 
    visit '/'
    expect(page).to have_content 'Hello Battle!'
  end

end

feature 'Entering Player Names' do 
  
  scenario 'Testing infastructure working' do 
    visit '/'
    fill_in 'player_1', with: 'James'
    fill_in 'player_2', with: 'Chris'
    click_button 'Submit'
    expect(page).to have_content 'James vs Chris'
  end

end