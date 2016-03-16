#
# Be sure to run `pod lib lint Three.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Three"
  s.version          = "0.1.2"
  s.summary          = "Three."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "A short description of Three"

  s.homepage         = "https://github.com/BruceLilonglong/test"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "lilonglong" => "596927598@qq.com" }
  s.source           = { :git => "https://github.com/BruceLilonglong/test.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'Three' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  NSURL = {:spec_name => "NSURL", :source_files =>['Pod/Classes/**/NSURL+*.{h,m}' ]}
  
  NSArray = {:spec_name => "NSArray", :source_files =>['Pod/Classes/**/NSArray+*.{h,m}' ]}
  
  UIImage = {:spec_name => "UIImage", :source_files =>['Pod/Classes/**/UIImage+*.{h,m}' ]}
  
  UITextView = {:spec_name => "UITextView", :source_files =>['Pod/Classes/**/UITextView+*.{h,m}' ]}
  
  $all_names = []
  
  $all_subspecs = [NSURL, NSArray, UIImage, UITextView]
  
  $all_subspecs.each do |spec|
      s.subspec spec[:spec_name] do |ss|
          
          specname = spec[:spec_name]
  
          $all_names << specname
          
          if spec[:source_files]
              ss.source_files = spec[:source_files]
          end
      end
  end

  spec_names = $all_names[0...-1].join(", ") + " 和 " + $all_names[-1]
  
  s.description = "拆分subspec:#{spec_names}"

end













