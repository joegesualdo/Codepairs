require 'spec_helper'

feature 'Log in' do, pending: true
  before :each do
    visit root_path
    click_link 'Log in'
  end
  context 'with valid credentials' do
    before :each do
      fill_in 'Email', with: 'test@example.com'
      fill_in 'Password', with: 'password'
      click_button 'Submit'
    end
    scenario 'show flash message' do
      expect(page).to have_content 'Welcome back'
    end
  end
  context 'without filling in information' do
    before :each do
      click_button 'Submit'
    end
    scenario 'shows flash message' do
      expect(page).to have_content "Sorry, we couldn't log you in with those credentials."
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
      click_button 'Submit'
    end
    scenario 'shows flash message' do
      expect(page).to have_content 'Welcome!'
    end
    scenario 'saves user to database' do
      expect(User.count).to eq 1
    end
  end
  context 'without filling in information' do
    before :each do
      click_button 'Submit'
    end
    scenario 'shows flash message' do
      expect(page).to have_content "Sorry, we couldn't sign you up with those credentials"
    end
    scenario 'user should not be created in database' do
      expect(User.count).to eq 0
    end
  end
end
