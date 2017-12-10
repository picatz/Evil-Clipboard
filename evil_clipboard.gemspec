
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "evil_clipboard/version"

Gem::Specification.new do |spec|
  spec.name          = "evil_clipboard"
  spec.version       = EvilClipboard::VERSION
  spec.authors       = ["Kent 'picat' Gruber"]
  spec.email         = ["kgruber1@emich.edu"]

  spec.summary       = %q{An evil clipboard.}
  #spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/picatz/Evil-Clipboard"
  spec.license       = "MIT"

  spec.files         = Dir['lib/**/*.rb']
  #spec.bindir        = 'bin'
  #spec.executable    = "clippy"
  spec.require_paths = ['lib'] 

  spec.add_dependency "clipboard", "~> 1.1.1"
  
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
