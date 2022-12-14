Rails.application.routes.draw do
  # get 'products/new'
  devise_for :users
  root to: "pages#home"

  resources :products do
    resources :offers, except: :destroy
  end

  resources :offers, only: :destroy



  # get "offers", to: 'offers#index'
  # get "offers/new", to: "offers#new"
  # get "offers", to: "offers#create"
  # get "offers/:id", to: "offers#show"
  # get "offers/:id/edit", to: 'offers#edit'
  # patch "offers/:id", to: 'offers#update'
  # delete "offers/:id", to: "offers#destroy"

  # get "products/new", to: "products#new"
  # post "products", to: "products#create"

  # delete "product/:id", to: "product#destroy"

  # get "products/:id/edit", to: 'products#edit'
  # patch "products/:id", to: "products#update"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
