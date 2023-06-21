Pod::Spec.new do |s|

  s.name         = "Markdown"
  s.version      = "0.0.1"
  s.summary      = "Swift compatible framework for Markdown"

  s.description  = <<-DESC
                   Swift compatible framework for Github's fork of cmark.
                   DESC

  s.homepage     = "https://github.com/ghostcrying/swift-markdown"
  s.license      = "BSD2"
  s.authors      = { "ghostcrying" => "czios1501@gmail.com" }
  s.source       = { :git => "https://github.com/ghostcrying/swift-markdown.git", :tag => "#{s.version}" }
    
  s.ios.deployment_target = "11.0"
  s.osx.deployment_target = "10.15"
  s.tvos.deployment_target = "9.0"

  s.source_files = [
    'Markdown/*.h',
    'Sources/Markdown/**/*.swift'
  ]
    
  s.resources = 'Sources/Markdown/*.docc'
  
  s.public_header_files = 'Markdown/*.h'
  
  s.dependency 'cmark-gfm'

end
