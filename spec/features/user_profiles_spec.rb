require 'spec_helper'


feature 'Expert profile' do
  let(:expert){ FactoryGirl.create(:expert, password: 'passwordtest') }
  
  scenario 'is availabel' do
    login_with(expert.email, expert.password)
    click_link 'Profile' 
    expect(page).to have_content 'Expert'
  end
end
