require 'spec_helper'

feature 'Users profile' do
  let(:expert){FactoryGirl.create(:expert, first: 'joe', last: 'gesualdo', email: 'test123@example.com', password: 'password')}
  scenario 'can be edited' do
    login_with(expert.email, expert.password)
    click_link 'Profile'
    click_link 'Edit'
    fill_in 'First', with: 'maggie'
    fill_in 'Current password', with: 'password'
    click_button 'Update'
    click_link 'Profile'
    
    expect(page).to have_content 'Name: maggie'
  end
end
