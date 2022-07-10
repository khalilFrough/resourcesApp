Rails.application.routes.draw do
  #get 'pages/index'
  get "contacts", to: 'pages#contacts'
  root to: "pages#index"
  
  resources :users
  get 'signup', to: 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
