module Features
  module SessionHelpers
    def login_with(email, password)
      visit root_path
      click_link 'Log in'
      fill_in 'Email', with: email 
      fill_in 'Password', with: password 
      click_button 'Sign in'
    end
    def sign_up_expert_with(first, last, email, password)
      visit new_expert_registration_path
      fill_in 'First', with: first 
      fill_in 'Last',  with: last 
      fill_in 'Email', with: email 
      fill_in 'Password', with: password 
      click_button 'Sign up'
    end
  end
end
