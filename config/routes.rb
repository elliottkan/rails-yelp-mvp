Rails.application.routes.draw do
  # For Restaurants
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # post 'restaurants', to: 'restaurants#create'
  # # # For Reviews
  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: 'new_restaurant_review'
  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: 'restaurant_reviews'
  # delete 'reviews/:id', to: 'reviews#destroy', as: 'reviews'

  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# Defines the root path route ("/")
# root "articles#index"
