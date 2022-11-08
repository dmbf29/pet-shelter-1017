Rails.application.routes.draw do
  # As a user I can see all found pets
  root to: 'pets#index'
  get '/pets', to: 'pets#index', as: :pets
  post '/pets', to: 'pets#create'
  get '/pets/new', to: 'pets#new', as: :new_pet
  get '/pets/:id', to: 'pets#show', as: :pet
  get '/pets/:id/edit', to: 'pets#edit', as: :edit_pet
  patch '/pets/:id', to: 'pets#update'
end
