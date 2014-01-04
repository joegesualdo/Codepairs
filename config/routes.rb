CodePairs::Application.routes.draw do
  
  root 'pages#home'

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
  
  devise_for :experts, controllers:  { registrations: "experts/registrations" }, skip: :sessions
  devise_for :students, controllers: { registrations: "students/registrations" }, skip: :sessions
  devise_for :users 
  
  resources :users do
    collection do
      get 'profile', to: "users#profile", as: 'profile'
    end
  end
end
