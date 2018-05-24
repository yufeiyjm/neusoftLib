#
# Be sure to run `pod lib lint newsoftLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name         = "newsoftLib"
s.version      = "0.1.0"
s.summary      = "photo browser for ios."
s.homepage     = "https://github.com/yufeiyjm/newsoftLib"
s.license      = "MIT"
s.author             = { "yufeiyjm" => "215436030@qq.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/yufeiyjm/neusoftLib.git", :tag => "0.1.0" }
s.source_files  = "newsoftLib", "newsoftLib/**/*.{h,m}"
s.framework  = "UIKit"
end
