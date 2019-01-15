#
# NOTE: This podspec is NOT to be published. It is only used as a local source!
#

Pod::Spec.new do |s|
  s.name             = 'zoo_shell_router'
  s.version          = '1.0.0'
  s.summary          = 'flutter enterance for ZooShell'
  s.description      = <<-DESC
  Providing lib of ZooShellRouter main.dart
                       DESC
  s.homepage         = 'https://flutter.io'
  s.license          = { :type => 'MIT' }
  s.author           = { 'Flutter Dev Team' => 'flutter-dev@googlegroups.com' }
  s.source           = { :git => 'https://github.com/taojigu/zoo_shell_router', :tag => s.version.to_s }
  s.ios.deployment_target = '7.0'
  #s.vendored_frameworks = 'ios_framework/App.framework'
  s.vendored_frameworks = 'ios/Flutter/App.framework'
  s.resource = 'ios_framework/flutter_assets'
  
end
