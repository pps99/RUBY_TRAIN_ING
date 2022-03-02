Rails.application.routes.draw do
  root "users#index"
  post "/handle_login", to: "users#validate_login"
  get "/handle_login", to: "users#handle_login"
  get "password/reset", to: "password_resets#new"
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit"
  post "password/reset/edit", to: "password_resets#update"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
