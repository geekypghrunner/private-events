Rails.application.routes.draw do
  
  root 'sessions#new'
  post '/', to: 'sessions#create'
  
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users, only:[:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
