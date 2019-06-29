Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :user_planets, only: [:index, :like, :show]
  resources :planets, only: [:index, :show]

  # get '/userplanets', to: 'user_planets#show'

  get '/allplanets', to: 'planets#index'

  post '/signin', to: 'users#signin'
  get '/validate', to: 'users#validate'
  get '/getuserplanets', to: 'users#user_planets'
  post '/signup', to: 'users#signup'

  post '/like', to: 'user_planets#like'
  # post '/rename', to: 'user_planets#rename_planet'


end
