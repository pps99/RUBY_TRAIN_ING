class LoginController < ApplicationController
  def handle_login
    @login = false
    email = "admin@gmail.com"
    password = "admin"
    if(params["email"] == email && params["password"] == password)
      session[:email] = params["email"]
      @login = true
    elsif(params["email"] == "" || params["password"] == "")
      @error = "Cannot be empty"
      render :index
    else(params["email"] != email || params["passwor"] != password )
      @error = "email and passwrod missmatch"
      render :index
    end
  end

  def handle_logout
    session.delete(:email)
    @login = false
    redirect_to "/"
  end
end
