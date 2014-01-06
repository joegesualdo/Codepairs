CodePairs::Application.routes.draw do
  
  root 'pages#home'

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  devise_for :experts, controllers:  { registrations: "experts/registrations" }, skip: :sessions
  devise_for :students, controllers: { registrations: "students/registrations" }, skip: :sessions
  devise_for :users, skip: :registrations  
 
  devise_scope :student do
    get 'signup', to: 'students/registrations#new'
  end

  devise_scope :user do
    get 'signin', to: 'devise/sessions#new'
  end

  resources :users do
    collection do
      get 'profile', to: "users#profile", as: 'profile', shallow: true
    end
  end

  resources :requests

end
