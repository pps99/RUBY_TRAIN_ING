Rails.application.routes.draw do
  resources :posts do
    collection { post :import }
  end
  root "users#handle_login"
  resources :users
  post "/handle_login", to: "users#validate_login"
  post "/search_database", to: "users#search"
  get "/search_database", to: "users#index"
  get "/handle_login", to: "users#handle_login"
  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  post "password/reset/edit", to: "password_resets#update"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
