platform :ios, '15.6'
use_frameworks!

target 'ProjectA' do
  pod 'Firebase/Core'
  pod 'AWSCore', '~> 2.10.0'
  pod 'ProjectB', :path => '../ProjectB'
  pod 'ProjectC', :git => 'https://github.com/tashyeghiazaryan/ProjectC.git', :branch => 'main'
  
  pod 'GoogleMLKit/TextRecognition'

  # Explicitly set Swift version
  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '5.0'
        config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'arm64'
      end
    end
  end
end
