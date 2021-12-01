feature 'Accessing the page' do 
  
  scenario 'Testing infastructure working' do 
    visit '/'
    expect(page).to have_content 'Hello Battle!'
  end

end

