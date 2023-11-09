Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get 'about', to: 'home#about'
  get 'kudat', to: 'home#kudat'
  get 'km', to: 'home#km'
  # Defines the root path route ("/")
  root "listings#index"
  resources :listings
  resources :bookings
end
