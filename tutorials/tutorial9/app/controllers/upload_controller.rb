class UploadController < ApplicationController
  require "fileutils"

  def create_folder
    @folder_name = params[:folder_name]
    @file_name = params[:picture].original_filename
    @arr = @file_name.split('.')
    
    if Dir.exists?("./app/assets/images/#{@folder_name}")
      @error = "Directory Already Exists Cannot Create"
      render "index"
    else
      Dir.mkdir("./app/assets/images/#{@folder_name}")
      if(@arr.last == "jpg" || @arr.last == "jpeg" || @arr.last == "png")
      File.open("./app/assets/images/#{@folder_name}/#{@file_name}", "wb") do |f|
        f.write params[:picture].read
      end
      render "folder_handler"
      else
        @error = "Accepts only the jpg/jpeg/png"
        render "index"
      end
    end
  end

  def return_root
    redirect_to "/"
  end
end
