Rails.application.routes.draw do

  root "recipes#index"
  resources :recipes
  resources :users, except: [:new]

  get "/signup", to: "users#new"
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  delete "users/:id", to: "users#destroy", as: "delete_user"
  delete "recipes/:id", to: "recipes#destroy", as: "delete_recipe"
  resources :sessions, only: [:create]

end