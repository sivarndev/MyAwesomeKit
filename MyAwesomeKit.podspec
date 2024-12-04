Pod::Spec.new do |spec|
    spec.name         = "MyAwesomeKit"
    spec.version      = "1.0.0"  # Update this manually when releasing new versions
    spec.summary      = "A brief description of MyAwesomeKit"
    spec.description  = "A longer description of MyAwesomeKit."
    spec.homepage     = "https://github.com/sivarndev/MyAwesomeKit"
    spec.license      = { :type => "MIT", :file => "LICENSE" }
    spec.author       = { "Your Name" => "your.email@example.com" }
    
    spec.ios.deployment_target = "13.0"
    
    spec.source       = { 
      :git => "https://github.com/sivarndev/MyAwesomeKit.git",
      :tag => spec.version.to_s
    }
    
    spec.vendored_frameworks = "MyAwesomeKit.xcframework"
    spec.swift_version = "5.0"
  end