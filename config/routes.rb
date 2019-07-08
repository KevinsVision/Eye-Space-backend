Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :user_planets
  resources :planets
  resources :rename_planets

  # get '/userplanets', to: 'user_planets#show'

  # get '/allplanets', to: 'planets#index'

  post '/signin', to: 'users#signin'
  get '/validate', to: 'users#validate'
  get '/user_planets/:id', to: 'user_planets#show'
  post '/signup', to: 'users#signup'

  # post '/like', to: 'user_planets#like'
  # post '/rename', to: 'user_planets#rename_planet'


end
