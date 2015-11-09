Pod::Spec.new do |s|

  s.name         = "FOGMJPEGImageView"
  s.version      = "0.2"
  s.summary      = "UIImageView subclass dedicated to displaying a MJPEG feed."
  s.description  = <<-DESC
                   FOGMJPEGImageView is a UIImageView subclass dedicated to displaying a MJPEG from a remote feed.

                   A typical use case for FOGMJPEGImageView would be displaying a live webcam feed.
                   DESC
  s.license      = "MIT"
  s.homepage     = "https://github.com/wbroek/FOGMJPEGImageView.git"
  s.author       = "Richard C. McGuire and Wouter van den Broek"
  s.source       = { :git => "https://github.com/wbroek/FOGMJPEGImageView.git", :tag => "0.0.2" }
  s.requires_arc = true
  s.platform     = :ios, "7.0"
  s.tvos.deployment_target = '9.0'
  s.source_files  = "FOGMJPEGImageView/**/*.{h,m}" #".{h,m}"

end
