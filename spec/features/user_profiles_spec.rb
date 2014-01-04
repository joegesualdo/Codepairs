require 'spec_helper'


feature 'Expert profile' do
  let(:expert){ FactoryGirl.create(:expert, password: 'passwordtest') }
  
  before do
    visit root_path
    click_link 'Log in'
    fill_in 'Email', with: expert.email
    fill_in 'Password', with: 'passwordtest'
    click_button 'Sign in'
    click_link 'Profile' 
  end
  scenario 'is availabel' do
    expect(page).to have_content 'Expert'
  end
end
