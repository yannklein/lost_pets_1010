Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # As a user I can see all found pets
  get 'pets', to: 'pets#index', as: 'pets'
  # As a user I can add a pet I found
  get 'pets/new', to: 'pets#new', as: 'new_pet'
  post 'pets', to: 'pets#create'
  # As a user I can see details about one found pet
  get 'pets/:id', to: 'pets#show', as: 'pet'
  # As a user I can update a pet

  # As a user I can delete a pet

  # resources :pets, only: [:index, :show]
end
