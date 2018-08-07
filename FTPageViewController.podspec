#
#  Be sure to run `pod spec lint FTPageViewController.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "FTPageViewController"
  s.version      = "0.0.2"
  s.summary      = "FTPageViewController makes UIPageViewController much easier to use."
  s.description  = <<-DESC
    FTPageViewController makes UIPageViewController much easier to use. It's just a resource for my future projects. Feel welcome to use anyway.
                   DESC
  s.homepage     = "https://github.com/liufengting"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "liufengting" => "wo157121900@me.com" }
  s.source       = { :git => "https://github.com/liufengting/FTPageViewController.git", :tag => "#{s.version}" }
  s.source_files  = "FTPageViewController", "FTPageViewController/**/*.{h,m,swift}"
  s.swift_version = '4.0'

end
