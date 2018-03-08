platform :ios, '9.0'
swift_version = '3.0'
use_frameworks!

target 'MyApp' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for BuildContainer
  pod 'RxSwift', '~> 3.0'

end


post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ONLY_ACTIVE_ARCH'] = 'NO'
      config.build_settings['SWIFT_VERSION'] = '3.0'
    end
  end
end

