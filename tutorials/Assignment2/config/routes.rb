Rails.application.routes.draw do
  resources :posts do
    collection { post :import }
  end
  root "users#index"
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
