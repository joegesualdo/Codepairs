CodePairs::Application.routes.draw do
  
  root 'pages#home'

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :students, controllers: { registrations: "students/registrations", sessions: 'sessions'}
  devise_for :experts, controllers:  { registrations: "experts/registrations", sessions: 'sessions'}
  devise_for :users, skip: :registrations

 devise_scope :student do
    get 'signup', to: 'students/registrations#new'
  end

  devise_scope :student do
    get 'signin', to: 'sessions#new'
    match 'signout', to: 'sessions#destroy', via: [:delete]
  end

  resources :users do
    collection do
      get 'profile', to: "users#profile", as: 'profile', shallow: true
    end
  end

  resources :requests

end
