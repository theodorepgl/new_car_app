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

  #Interior Division
  get 'beaufort', to: 'home#beaufort'
  get 'keningau', to: 'home#keningau'
  get 'kualapenyu', to: 'home#kualapenyu'
  get 'membakut', to: 'home#membakut'
  get 'nabawan', to: 'home#nabawan'
  get 'sipitang', to: 'home#sipitang'
  get 'tambunan', to: 'home#tambunan'
  get 'tenom', to: 'home#tenom'

  #Sandakan Division
  get 'beluran', to: 'home#beluran'
  get 'kinabatangan', to: 'home#kinabatangan'
  get 'sandakan', to: 'home#sandakan'
  get 'telupid', to: 'home#telupid'
  get 'tongod', to: 'home#tongod'

  # Defines the root path route ("/")
  root "listings#index"
  resources :listings
  resources :bookings
end
