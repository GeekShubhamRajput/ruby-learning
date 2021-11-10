## RubyQRCodeGeneration

# RQRCode is a gem for creating and rendering QR codes into various formats.

require 'rqrcode'

qr = RQRCode::QRCode.new("https://www.linkedin.com/in/shubham-rajput-ruby-rails/")
linked_in_qr =  qr.as_png
IO.binwrite("linkedin-qrcode.png", linked_in_qr.to_s)
