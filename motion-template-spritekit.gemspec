# coding: utf-8
VERSION = "0.2.0"

Gem::Specification.new do |spec|
  spec.name          = "motion-template-spritekit"
  spec.version       = VERSION
  spec.authors       = ["meganemura"]
  spec.email         = ["mura2megane@gmail.com"]
  spec.description   = %q{Project template for SpriteKit with RubyMotion}
  spec.summary       = %q{Setup SpriteKit template to user's directory}
  spec.homepage      = "https://github.com/meganemura/motion-template-spritekit"
  spec.license       = "MIT"
  spec.extensions    = ['ext/extconf.rb'] # Command-Line Plugin Installer

  spec.files         = `git ls-files`.split($\)
  spec.require_paths = ["lib"]
end
