require 'spec_helper'

feature 'Log in'do
  before :each do
    visit root_path
    click_link 'Sign up'
    fill_in 'Email', with: 'test@example.com'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Sign up'
    click_link 'Sign out'

    visit root_path
    click_link 'Log in'
  end
  context 'with valid credentials' do
    before :each do
      fill_in 'Email', with: 'test@example.com'
      fill_in 'Password', with: 'password'
      click_button 'Sign in'
    end
    scenario 'show flash message' do
      expect(page).to have_content 'Signed in successfully'
    end
  end
  context 'without filling in information' do
    before :each do
      click_button 'Sign in'
    end
    scenario 'shows flash message' do
      expect(page).to have_content "Invalid"
    end
  end
end

feature 'Sign up' do
  before :each do
    visit root_path
    click_link 'Sign up'
  end
  context 'with valid credentials' do
    before :each do
      fill_in 'Email', with: 'woowee@gmail.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_button 'Sign up'
    end
    scenario 'shows messages' do
      expect(page).to have_content 'Welcome'
    end
    scenario 'saves user to database' do
      expect(User.count).to eq 1
    end
    scenario 'can log out' do
      click_link 'Sign out'
      expect(page).to have_content 'Signed out successfully'
    end
  end
  context 'without filling in information' do
    before :each do
      click_button 'Sign up'
    end
    scenario 'shows error messages' do
      expect(page).to have_content "errors"
    end
    scenario 'user should not be created in database' do
      expect(User.count).to eq 0
    end
  end
end

