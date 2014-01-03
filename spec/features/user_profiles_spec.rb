require 'spec_helper'

feature 'User profile' do
  let(:user){ FactoryGirl.create(:user, password: 'passwordtest') }
  
  before do
    visit root_path
    click_link 'Log in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'passwordtest'
    click_button 'Sign in'
    click_link 'Profile' 
  end
  scenario 'is available' do
    expect(page).to have_content user.email
  end
  scenario 'has first name' do
    expect(page).to have_content user.first
  end
end
