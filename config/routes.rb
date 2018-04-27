Rails.application.routes.draw do
  get 'comments/new'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "listings#index"
  
  resources :users, :listings, :comments
  resources :listings do
    resources :comments
  end
   get '/listings/new', to: "listings#new"
   post '/listings', to: "listings#create"
   get '/listings', to: "listings#index"
   get '/listings/:id', to: 'listings#show'
   post '/comments/new', to: 'comments#new'
   get '/home', to: 'home#index'
   patch '/favorite', to: "listings#add_favorite"
end
