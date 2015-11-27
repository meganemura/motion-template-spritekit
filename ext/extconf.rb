# Template Installer
require 'fileutils'

dir = File.expand_path("~/Library/RubyMotion/template/")
dir_src_templates = File.expand_path(File.join(File.dirname(__FILE__), "../template"))
templates = %w(spritekit-ios spritekit-osx spritekit-tvos)
templates.each do |template|
  src = File.join(dir_src_templates, template)
  dst = File.join(dir, template)

  FileUtils.mkdir_p(dir) unless File.exist?(dir)
  FileUtils.ln_s src, dst, :force => true
end


### dummy ###
require 'mkmf'
create_makefile('')
