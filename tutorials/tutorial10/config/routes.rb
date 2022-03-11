Rails.application.routes.draw do
  root "read#index"
  post "/display_content", to: "read#display_content"
  get "/display_content", to: "read#display_content"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
