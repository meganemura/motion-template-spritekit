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

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
end
