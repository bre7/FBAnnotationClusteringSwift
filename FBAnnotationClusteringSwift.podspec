#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'FBAnnotationClusteringSwift'
  s.version          = '0.1.3'
  s.summary          = 'Clustering library for iOS maps'
  s.homepage         = 'https://github.com/ribl/FBAnnotationClusteringSwift'
  s.screenshots      = 'https://raw.githubusercontent.com/ribl/FBAnnotationClusteringSwift/master/GitHubImages/simulatorShot.png'
  s.license          = 'MIT'
  s.author           = { 'Filip Beć' => 'filip.bec@gmail.com', 'ribl' => 'dev@ribl.co' }
  s.source           = { :git => 'https://github.com/bre7/FBAnnotationClusteringSwift.git', :tag => s.version }
  s.social_media_url = 'https://twitter.com/FilipBec'
  s.requires_arc     = true

  s.platform                = :ios
  s.ios.deployment_target   = '8.0'
  s.source_files 			= 'Source/*.swift'

  s.frameworks = 'CoreLocation', 'MapKit'
end
