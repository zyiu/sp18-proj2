Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :users
   get '/listings/new', to: "listings#new"
   post '/listings', to: "listings#create"
end
