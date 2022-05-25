Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'products#index'

  get '/profile', to: 'profiles#profile'

  resources :products do
    resources :rentals, only: [:create]
  end
  resources :rentals, only: [:destroy]
end
