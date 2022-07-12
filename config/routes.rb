Rails.application.routes.draw do
  get 'sessions/new'
  #get 'pages/index'
  get "/contacts", to: 'pages#contacts'
  root to: "pages#index"
  
  resources :users
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
