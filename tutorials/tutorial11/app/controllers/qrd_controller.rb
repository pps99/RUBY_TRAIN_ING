class QrdController < ApplicationController
  require "rqrcode"

  def create_qr
    @data = params[:input_data]
    if(@data.length == 0 || @data.length > 10)
      redirect_to root_path,alert: "Cannot create QR code"
    else
    @qrcode = RQRCode::QRCode.new("#{@data}")
    @png = @qrcode.as_png(
      bit_depth: 1,
      border_modules: 4,
      color_mode: ChunkyPNG::COLOR_GRAYSCALE,
      color: "black",
      file: nil,
      fill: "white",
      module_px_size: 12,
      resize_exactly_to: false,
      resize_gte_to: false,
      size: 120,
    )
    @file_location = "./app/assets/images/qrfile.png"
    File.binwrite(@file_location, @png.to_s)
    render "display"
  end
  end

  def download
    @file_location = "./app/assets/images/qrfile.png"
    send_file @file_location, :type => "application/png", :x_sendfile => true
  end
end
