Rails.application.routes.draw do
  # get '/restaurants', to: "restaurants#index"
  # get '/restaurants/new', to: "restaurants#new"
  # get '/restaurants/french', to: "restaurants#french", as: :french_restaurants
  # get '/restaurants/:id', to: "restaurants#show", as: :restaurant
  # post '/restaurants', to: "restaurants#create"

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:index, :new, :create]
  end
end
