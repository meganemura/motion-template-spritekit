# coding: utf-8
VERSION = "0.4.0"

Gem::Specification.new do |spec|
  spec.name          = "motion-template-spritekit"
  spec.version       = VERSION
  spec.authors       = ["meganemura"]
  spec.email         = ["mura2megane@gmail.com"]
  spec.description   = %q{SpriteKit project templates for RubyMotion (iOS/OSX/tvOS)}
  spec.summary       = %q{Setup SpriteKit template to user's directory}
  spec.homepage      = "https://github.com/meganemura/motion-template-spritekit"
  spec.license       = "MIT"
  spec.extensions    = ['ext/extconf.rb'] # Template Installer

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ["lib"]
end
