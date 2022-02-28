require "./config/initializers/constants.rb"

class LoginController < ApplicationController
  def validate_login
    if EMAIL === params[:email] && PASSWORD === params[:password]
      session[:email] = params[:email]
      session[:password] = params[:password]
      render "handle_login"
    elsif (params[:email] == "" || params[:password] == "")
      redirect_to root_path, alert: "Cannot be empty"
    else (params[:email] != EMAIL || params[:password] != PASSWORD)
      redirect_to root_path, alert: "Email & Password Missmatched"     end
  end
end
