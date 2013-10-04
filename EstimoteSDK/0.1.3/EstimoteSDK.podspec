Pod::Spec.new do |s|
  s.name         = "EstimoteSDK"
  s.version      = "0.1.3"
  s.summary      = "Estimote SDK is a wrapper around Apple's CoreLocation framework."

  s.description  = <<-DESC
                   Estimote SDK is a wrapper around Apple's CoreLocation framework. It is dedicated for iOS 7 as it's based on newly introduced CoreLocation framework functionality called iBeacon. It consists of 3 classes: ESTBeaconManager, ESTBeaconRegion and ESTBeacon. Each of them is an equivalent of CoreLocation classes (CLLocationManager, CLBeaconRegion, CLBeacon) created in particular for Estimote Beacons Platform.
                   DESC

  s.homepage     = "http://estimote.com"
  s.license      = 'MIT'
  s.author       = 'martinklimek', 'ljdk'
  s.platform     = :ios, '7.0'
  s.source       = { :git => "https://github.com/macteo/iOS7-SDK.git", :tag => "0.1.3" }

  s.public_header_files = 'EstimoteSDK/Headers/*.h'

  s.frameworks = 'CoreBluetooth', 'SystemConfiguration', 'CoreLocation'
  
  s.library    = 'EstimoteSDK7'
  s.xcconfig        =  { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/EstimoteSDK' }
  s.preserve_paths  = 'EstimoteSDK/libEstimoteSDK7.a'
  
  s.requires_arc = true
end
