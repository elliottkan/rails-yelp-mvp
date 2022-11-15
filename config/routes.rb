Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  post 'restaurants', to: 'restaurants#create'
end

# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# Defines the root path route ("/")
# root "articles#index"
