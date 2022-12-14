Pod::Spec.new do |s|
  s.name             = 'ZMS'
  s.version          = '0.0.3'
  s.summary          = 'ZMS'
 
  s.description      = 'This is just a test SDK' 
  s.homepage         = 'https://github.com/ZoomCar/iOS-ZMS-SDK-Public'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Zoomcar' => 'mobileapps@zoomcar.com' }
  s.source            = { :http => 'https://github.com/ZoomCar/iOS-ZMS-SDK-Public/raw/main/demo-0.0.3/ZMS/ZMS.zip' }
 
  s.ios.deployment_target = '12.0'
 # s.source_files = 'testSDK24/**'
   s.resource_bundle = {
        'ZMSBundle' => ['ZMS/ZMS.framework/ZMSBundle.bundle/*.{xcassets,png,ttf,gif,json}']
   }

  #s.resources = ['SDK/ZMS.framework/ZMSBundle.bundle/*.{xcassets,png,ttf,gif,json}']

  s.swift_version = '5.0'
  s.static_framework = true
  s.dependency 'MaterialComponents/ShadowLayer', '= 116.0'
  s.dependency 'MaterialComponents/ShadowElevations', '= 116.0'
  s.dependency 'MaterialComponents/TextFields', '= 116.0'
  s.dependency 'GoogleMaps', '6.0.1'
  s.dependency 'GooglePlaces', '6.0.0'
  s.dependency 'Analytics'
  s.dependency 'ZMSMpp', '0.0.2'
  # s.dependency 'zmsmpp', :path => '~/ZoomCar/ZmsMppDemo/mobile-zms-mpp/zmsmpp'  
   
  s.frameworks = 'Foundation', 'UIKit', 'CoreData'
  s.vendored_frameworks = 'ZMS/ZMS.framework'
  # s.resources = [ "ZMS.framework/ZoomcarSDKBundle.bundle/*.{nib,car}" ]

  s.xcconfig = {
   "LIBRARY_SEARCH_PATHS" => "\"$(PODS_ROOT)/cocos-binary\"",
   "HEADER_SEARCH_PATHS" => "\" $(PODS ROOT)/cocos-binary/include/**\"",
    "OTHER_LDFLAGS" => "-lsqlite3"
   }

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
end