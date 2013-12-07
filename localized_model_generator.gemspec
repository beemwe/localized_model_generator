# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'localized_model_generator/version'

Gem::Specification.new do |spec|
  spec.name          = "localized_model_generator"
  spec.version       = LocalizedModelGenerator::VERSION
  spec.authors       = ["Bernd M. Walter"]
  spec.email         = ["bernd.m.walter@gmail.com"]
  spec.description   = %q{extends the active_record:model generator with locale files in /config/locales. The Translations to the specific languages has still to be made, but the files are still there.}
  spec.summary       = %q{extends the active_record:model generator with locale files}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
