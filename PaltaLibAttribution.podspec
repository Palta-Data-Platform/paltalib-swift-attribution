Pod::Spec.new do |spec|
  spec.name                  = 'PaltaLibAttribution'
  spec.version               = '2.3.0'
  spec.license               = 'MIT'
  spec.summary               = 'PaltaLib iOS SDK - Attribution'
  spec.homepage              = 'https://github.com/Palta-Data-Platform/paltalib-ios'
  spec.author                = { "Palta" => "dev@palta.com" }
  spec.source                = { :git => 'https://github.com/Palta-Data-Platform/paltalib-swift-attribution.git', :tag => "#{spec.version}" }
  spec.requires_arc          = true
  spec.static_framework      = true
  spec.ios.deployment_target = '10.0'
  spec.swift_versions        = '5.3'

  spec.source_files = 'Sources/PaltaLibAttribution/**/*.swift'

  spec.dependency 'AppsFlyerFramework', '~> 6.8.0'
end
