CodePairs::Application.routes.draw do

  devise_for :users

  resources :users do
    collection do
      get 'profile', to: "users#profile", as: 'profile'
    end
  end

  root 'pages#home'

end
