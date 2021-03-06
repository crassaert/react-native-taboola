require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNTaboola"
  s.version      = package['version']
  s.summary      = package['description']
  s.homepage     = "https://github.com/crassaert/react-native-taboola"
  s.license      = "MIT"
  s.author       = package['author']
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/crassaert/react-native-taboola.git", :tag => "#{s.version}" }
  s.source_files = "ios/*.{h,m}"
  s.requires_arc = true

  s.dependency 'React'
  s.dependency 'TaboolaSDK'
end
