require 'spec_helper'

feature 'Request' do
  scenario 'can be created' do
    FactoryGirl.create(:student, email: 'testing@example.com', password: 'password')
    visit root_path
    click_link 'Log in'
    fill_in 'Email', with: 'testing@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Sign in'
    click_link 'New Request'
    fill_in 'Description', with: 'I need help refactoring'
    click_button 'Submit'
    expect(page).to have_content 'Student Profile'
    expect(page).to have_content 'I need help refactoring'
  end
end
