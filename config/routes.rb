CodePairs::Application.routes.draw do

  devise_for :experts, controllers:  { registrations: "experts/registrations" }
  devise_for :students, controllers: { registrations: "students/registrations" }

  resources :users do
    collection do
      get 'profile', to: "users#profile", as: 'profile'
    end
  end

  root 'pages#home'

end
