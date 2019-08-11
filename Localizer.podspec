#
# Be sure to run `pod lib lint UIKit-Plus.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Localizer'
  s.module_name      = 'Localizer'
  s.version          = '1.0.2'
  s.summary          = '🇮🇸🇩🇪🇯🇵🇲🇽Swift localization helper'

  s.swift_version    = '4.2'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Easily localize any iOS or even server-side project'

  s.homepage         = 'https://github.com/MihaelIsaev/UIKitPlus'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MihaelIsaev' => 'isaev.mihael@gmail.com' }
  s.source           = { :git => 'https://github.com/MihaelIsaev/Localizer.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'Classes/**/*'

  # s.resource_bundles = {
  #   'UIKitPlus' => ['UIKitPlus/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
end
