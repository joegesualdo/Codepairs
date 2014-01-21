require 'spec_helper'

feature 'Log in' do
  let(:expert){ FactoryGirl.create(:expert, password: 'password')}
  context 'with valid credentials' do
    before :each do
      login_with(expert.email, expert.password)
    end
    scenario 'show flash message' do
      expect(page).to have_content 'Signed in successfully'
    end
    scenario 'log out button appears' do
      expect(page).to have_content 'Sign out'
    end
  end
  context 'without filling in information' do
    before :each do
      login_with('','')
    end
    scenario 'shows flash message' do
      expect(page).to have_content "Invalid"
    end
    scenario 'log out buttons does not appear' do
      expect(page).to_not have_content 'Sign out'
    end
  end
end

feature 'Sign up' do
  context 'with valid credentials' do
    before :each do
      sign_up_expert_with('Jen', 'Hen', 'woowee@gmail.com', 'password')
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
      sign_up_expert_with('', '', '', '')
    end
    scenario 'shows error messages' do
      expect(page).to have_content "errors"
    end
    scenario 'user should not be created in database' do
      expect(User.count).to eq 0
    end
  end
end

