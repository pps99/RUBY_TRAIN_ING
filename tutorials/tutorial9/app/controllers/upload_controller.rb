class UploadController < ApplicationController
  def create_folder
    @folder_name = params[:folder_name]
    if (params[:picture] == nil || @folder_name == nil)
      redirect_to root_path, alert: "File cannot be empty"
    else
      @file_name = params[:picture].original_filename
      @arr = @file_name.split(".")
      if (Dir.exists?("./app/assets/images/#{@folder_name}"))
        redirect_to root_path, alert: "Folder already exits"
      else
        session[:folder_name] = @folder_name
        session[:file_name] = @file_name
        Dir.mkdir("./app/assets/images/#{@folder_name}")
        if (@arr.last == "jpg" || @arr.last == "jpeg" || @arr.last == "png")
          File.open("./app/assets/images/#{@folder_name}/#{@file_name}", "wb") do |f|
            f.write params[:picture].read
          end
          render "folder_handler"
        else
          redirect_to root_path, alert: "Accepts only the jpg/jpeg/png"
        end
      end
    end
  end
end
