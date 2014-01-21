module Features
  module SessionHelpers
    def login_with(email, password)
      visit root_path
      click_link 'Log in'
      fill_in 'Email', with: email 
      fill_in 'Password', with: password 
      click_button 'Sign in'
    end
  end
end
