# coding: utf-8
VERSION = "0.1"

Gem::Specification.new do |spec|
  spec.name          = "motion-spritekit-template"
  spec.version       = VERSION
  spec.authors       = ["meganemura"]
  spec.email         = ["mura2megane@gmail.com"]
  spec.description   = %q{Project template for SpriteKit with RubyMotion}
  spec.summary       = %q{Setup SpriteKit template to user's directory}
  spec.homepage      = ""
  spec.license       = "MIT"
  spec.extensions    = ['ext/extconf.rb'] # Command-Line Plugin Installer

  files = []
  files << 'README.md'
  files.concat(Dir.glob('ext/**/*.rb'))
  files.concat(Dir.glob('template/**/*'))
  spec.files         = files
  spec.require_paths = ["lib"]
end
