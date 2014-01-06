require 'spec_helper'

feature 'Users profile' do
  before do
    FactoryGirl.create(:expert, first: 'joe', last: 'gesualdo', email: 'test123@example.com', password: 'password')
  end
  scenario 'can be edited' do
    visit root_path
    expect(page).to_not have_content 'Profile'
    click_link 'Log in'
    fill_in 'Email', with: 'test123@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Sign in'
    click_link 'Profile'
    click_link 'Edit'
    expect(page).to have_content 'Edit Expert'
    fill_in 'First', with: 'maggie'
    fill_in 'Current password', with: 'password'
    click_button 'Update'
    click_link 'Profile'
    expect(page).to have_content 'Name: maggie'
  end
end
