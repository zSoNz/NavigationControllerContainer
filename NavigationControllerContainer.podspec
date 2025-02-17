Pod::Spec.new do |s|
  s.name      = "NavigationControllerContainer"
  s.version   = "1.0.0"
  s.swift_version = "5.0"
  s.summary   = "UIViewController subclass to contain inside UINavigationController instance."
  s.description  = "A lightweight Swift library for managing navigation within a container-based architecture using UINavigationController."
  s.homepage  = "https://github.com/zSoNz/NavigationControllerContainer"
  s.license   = { :type => "New BSD", :file => "LICENSE" }
  s.author    = { "Bohdan" => "xzsonzx@gmail.com" }
  s.source    = { :git => "https://github.com/zSoNz/NavigationControllerContainer",
                  :tag => s.version.to_s }

  # Platform setup
  s.requires_arc          = true
  s.ios.deployment_target = '13.0'

  # Preserve the layout of headers in the Module directory
  s.header_mappings_dir   = 'Source'
  s.source_files          = 'Source/**/*.{swift,h,m,c,cpp}'
end
