require 'spec_helper'

feature 'Request' do
  let(:student){FactoryGirl.create(:student, email: 'testing@example.com', password: 'password')}
  scenario 'can be created' do
    login_with(student.email, student.password)

    click_link 'New Request'
    fill_in 'Description', with: 'I need help refactoring'
    click_button 'Submit'
    
    expect(page).to have_content 'Student Profile'
    expect(page).to have_content 'I need help refactoring'
  end
end
