Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # root to: "listings#show"
  resources :users, :listings
   get '/listings/new', to: "listings#new"
   post '/listings/create', to: "listings#create"
   get '/listings/:id', to: 'listings#show'
   get '/listings', to: "listings#index"
   patch '/favorite', to: "listings#add_favorite"
end
