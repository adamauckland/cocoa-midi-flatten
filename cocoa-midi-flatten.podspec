Pod::Spec.new do |s|

  s.name         = "cocoa-midi-flatten"
  s.version      = "0.0.1"
  s.summary      = "Objective-C flatten MIDI."

  s.description  = <<-DESC
                   Objective-C flatten MIDI.
                   DESC

  s.homepage     = "https://github.com/adamauckland/cocoa-midi-flatten"
  s.license      = "MIT"
  s.author       = { "Adam Auckland" => "adamauckland@gmail.com" }

  s.source       = { :git => "git@github.com:adamauckland/cocoa-midi-flatten.git", :submodules => true }

  s.public_header_files = 'cocoa-midi-flatten/*.{h}'
  s.source_files  = 'cocoa-midi-flatten', 'cocoa-midi-flatten/*.{h,m}', 'midi-flatten/src', 'midi-flatten/src/*.{h,c}'

end
