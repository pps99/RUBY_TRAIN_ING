Rails.application.routes.draw do
  root "login#index"
  post "/handle_login", to: "login#validate_login"
  get "/handle_login", to: "login#handle_login"
end
