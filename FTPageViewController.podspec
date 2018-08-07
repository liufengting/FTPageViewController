
Pod::Spec.new do |s|

  s.name         = "FTPageViewController"
  s.version      = "0.0.3"
  s.summary      = "FTPageViewController makes UIPageViewController much easier to use."
  s.description  = <<-DESC
    FTPageViewController makes UIPageViewController much easier to use. It's just a resource for my future projects. Feel welcome to use anyway.
                   DESC
  s.homepage     = "https://github.com/liufengting"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.platform     = :ios, "8.0"
  s.author       = { "liufengting" => "wo157121900@me.com" }
  s.source       = { :git => "https://github.com/liufengting/FTPageViewController.git", :tag => "#{s.version}" }
  s.source_files  = "FTPageViewController", "FTPageViewController/**/*.{h,m,swift,plist}"
  s.swift_version = '4.0'

end
