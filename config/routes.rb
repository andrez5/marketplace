Rails.application.routes.draw do
  get 'products/new'
  devise_for :users
  root to: "pages#home"

  get "offers", to: 'offers#index'
  get "offers/new", to: "offers#new"
  get "offers/:id", to: "offers#show"
  delete "offers/:id", to: "offers#destroy"
  get "offers", to: "offers#create"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
