require "./config/initializers/constants.rb"
require "./config/initializers/messages.rb"
class LoginController < ApplicationController
  def validate_login
    if EMAIL === params[:email] && PASSWORD === params[:password]
      session[:email] = params[:email]
      session[:password] = params[:password]
      render "handle_login"
    elsif (params[:email] == "" || params[:password] == "")
      redirect_to root_path, alert: EMPTY
    else (params[:email] != EMAIL || params[:password] != PASSWORD)
      redirect_to root_path, alert: MISSMATCHED     end
  end
end
