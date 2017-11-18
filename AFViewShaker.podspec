Pod::Spec.new do |s|
  s.name         = "AFViewShaker"
  s.version      = "0.0.5"
  s.summary      = "AFViewShaker is simple as a brick utility for UIView shake animation."
  s.homepage     = "https://github.com/ArtFeel/AFViewShaker"
  s.screenshots  = "https://raw.githubusercontent.com/ArtFeel/AFViewShaker/master/example.gif"
  s.author       = { "Philip Vasilchenko" => "philip.vasilchenko@gmail.com" }
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/ArtFeel/AFViewShaker.git", :tag => s.version.to_s }
  s.source_files = "AFViewShaker/*.{h,m}"
  s.requires_arc = true
end
