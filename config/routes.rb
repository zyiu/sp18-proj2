Rails.application.routes.draw do
  get 'comments/new'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  
  resources :users, :listings, :comments
   get '/listings/new', to: "listings#new"
   post '/listings', to: "listings#create"
   get '/listings', to: "listings#index"
   get '/listings/:id', to: 'listings#show'
   post '/comments/new', to: 'comments#new'
   
end
