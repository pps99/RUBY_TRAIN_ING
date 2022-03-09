Rails.application.routes.draw do
  root "qrd#index"
  post "/create_qr", to: "qrd#create_qr"
  get "/create_qr", to: "qrd#display"
  get "/download", to: "qrd#download"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
