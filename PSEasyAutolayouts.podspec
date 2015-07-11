#
# Be sure to run `pod lib lint PSEasyAutolayouts.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "PSEasyAutolayouts"
  s.version          = "0.1.0"
  s.summary          = "PSEasyAutolayouts - autolayouts easy"
  s.description      = "Allows you easly add most used Autolayouts constraints."
  s.homepage         = "https://github.com/dahiri-farid/PSEasyAutolayouts"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Dahiri Farid" => "dahiri.farid@gmail.com" }
  s.source           = { :git => "https://github.com/dahiri-farid/PSEasyAutolayouts.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/dahiri_farid'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'PSEasyAutolayouts' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/PSEAL.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
