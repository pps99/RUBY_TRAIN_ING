class ReadController < ApplicationController
  def display_content
    @file_location= "./public/filefolder/readme.txt"
    @readData = File.open(@file_location)
    @file_data = @readData.read
    render "display"
  end
end
