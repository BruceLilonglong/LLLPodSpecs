#
# Be sure to run `pod lib lint YTXLLLCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "YTXLLLCategory"
  s.version          = "0.1.1"
  s.summary          = "YTXLLLCategory."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = "A short description of YTXLLLCategory."

  s.homepage         = "https://github.com/BruceLilonglong/YTXLLLCategory"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "lilonglong" => "596927598@qq.com" }
  s.source           = { :git => "https://github.com/BruceLilonglong/YTXLLLCategory.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
#  s.resource_bundles = {
#    'YTXLLLCategory' => ['Pod/Assets/*.png']
#  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  UIImage      = {:spec_name => "UIImage",       :source_files => ['Pod/Classes/**/UIImage+*.{h,m}'           ]}
  
  UITextView   = {:spec_name => "UITextView",    :source_files => ['Pod/Classes/**/UITextView+*.{h,m}'        ]}
  
  NSArray      = {:spec_name => "NSArray",       :source_files => ['Pod/Classes/**/NSArray+*.{h,m}'           ]}
  
  NSURL        = {:spec_name => "NSURL",         :source_files => ['Pod/Classes/**/NSURL+*.{h,m}'             ]}
  
  $all_names   = []
  
  $all_subspec = [UIImage, UITextView, NSArray, NSURL]

#  $all_subspec.each do |spec|
#      s.subspec spec[:spec_name] do |ss|
#          
#          specname = spec[:spec_name]
#          
#          $all_names << specname
#          if spec[:source_files]
#              ss.source_files = spec[:source_files]
#          end
#          
#      end
#      
#    end
#      
#      
#    spec_names = $all_names[0...-1].join(", ") + " 和 " + $all_names[-1]
#    
#    s.description = "拆分了这些subspec:#{spec_names}"
#  
#end
    $all_subspec.each do |spec|
        s.subspec spec[:spec_name] do |ss|
            
            specname = spec[:spec_name]
            
            $all_names << specname
            if spec[:source_files]
                ss.source_files = spec[:source_files]
            end
            
#            if spec[:sub_dependency]
#                spec[:sub_dependency].each do |dep|
#                    ss.dependency "YTXUtilCategory/#{dep[:spec_name]}"
#                end
#            end
#            
#            if spec[:dependency]
#                spec[:dependency].each do |dep|
#                    ss.dependency dep[:name], dep[:version]
#                end
#            end

        end
    end

    spec_names = $all_names[0...-1].join(", ") + " 和 " + $all_names[-1]

    s.description = "拆分了这些subspec:#{spec_names}"
end












