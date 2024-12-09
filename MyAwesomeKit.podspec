Pod::Spec.new do |s|
    s.name             = 'MyAwesomeKit'
    s.version          = '0.0.20'
    s.summary          = 'A short description'
    s.homepage         = 'https://github.com/sivarndev/MyAwesomeKitSpecs'
    s.license          = { :type => 'Commercial', :text => 'Copyright (c) 2024' }
    s.author           = { 'sivarndev' => 'siva.ping.here@gmail.com' }
    
    # Just point to your repo
    s.source           = { 
      :git => 'https://github.com/sivarndev/MyAwesomeKitSpecs.git',
      :tag => s.version.to_s
    }
    
    s.ios.deployment_target = '13.0'
    s.vendored_frameworks = 'MyAwesomeKit.xcframework'
  end