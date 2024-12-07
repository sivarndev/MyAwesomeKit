Pod::Spec.new do |spec|
  spec.name = "MyAwesomeKit"
  spec.version = "0.0.3"
  spec.summary = "Sample Podspec for MyAwesomeKit"
  spec.homepage = "https://github.com/sivarndev/MyAwesomeKit"
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.author = { "sivarndev" => "siva.ping.here@gmail.com" }
  spec.source = {
    :git => "https://github.com/sivarndev/MyAwesomeKit.git",
    :tag => "#{spec.version}"
  }
  
  # Add these lines
  spec.ios.deployment_target = "13.0"
  spec.swift_version = "5.0"
  spec.vendored_frameworks = "output/MyAwesomeKit.xcframework"  # Adjust path to match your framework
 end