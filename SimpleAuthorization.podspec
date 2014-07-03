Pod::Spec.new do |s|
  s.name         = "SimpleAuthorization"
  s.version      = "0.9.0"
  s.summary      = "SimpleAuthorization will display a message in the app side prior to iOS built-in access authentication within the application."

  s.description  = <<-DESC
                   SimpleAuthorization offers the ability to display a message by the application before authenticating posts CameraRoll of user, Twitter, to Facebook. It provides the ability to display an alert for you to grant the permissions If authentication is denied.
                   DESC

  s.homepage     = "https://github.com/notoroid/SimpleAuthorization"
  s.screenshots  = "https://raw.githubusercontent.com/notoroid/SimpleAuthorization/master/Screenshots/ss01.png", "https://raw.githubusercontent.com/notoroid/SimpleAuthorization/master/Screenshots/ss02.png"

  s.license      = "The MIT License (MIT)"

  s.author             = { "notoroid" => "noto@irimasu.com" }
  s.social_media_url   = "http://twitter.com/notoroid"

  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/notoroid/SimpleAuthorization.git", :tag => 'v0.9.0'}

  s.source_files  = "Lib/**/*.{h,m}"
  s.dependency 'UIImage+BlurredFrame'

  s.public_header_files = "Lib/**/*.h"

  s.framework  = "QuartzCore"

  s.requires_arc = true

end
