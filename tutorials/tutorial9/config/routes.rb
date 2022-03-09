Rails.application.routes.draw do
  root "upload#index"
  post "/create_folder", to: "upload#create_folder"
  get "/create_folder", to: "upload#folder_handler"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
