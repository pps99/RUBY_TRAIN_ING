Rails.application.routes.draw do
  root 'upload#index'
  get "/upload", to: "upload#index"
  get "/folder_handler", to: "upload#index"
  post "/folder_handler", to: "upload#create_folder"
  get "/return_root", to: "upload#return_root"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
