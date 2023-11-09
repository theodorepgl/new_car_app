Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'about', to: 'home#about'

  #Kudat Division
  get 'kudat', to: 'home#kudat'
  get 'km', to: 'home#km'
  get 'pitas', to: 'home#pitas'

  #West Coast Division
  get 'kb', to: 'home#kb'
  get 'papar', to: 'home#papar'
  get 'penampang', to: 'home#penampang'
  get 'putatan', to: 'home#putatan'
  get 'ranau', to: 'home#ranau'
  get 'tuaran', to: 'home#tuaran'

  
  # Defines the root path route ("/")
  root "listings#index"
  resources :listings
  resources :bookings
end
