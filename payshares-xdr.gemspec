# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xdr/version'

Gem::Specification.new do |spec|
  spec.name          = "payshares-xdr"
  spec.version       = XDR::VERSION
  spec.authors       = ["Kedia"]
  spec.email         = ["support@payshares.org"]
  spec.summary       = %q{Payshares XDR Helper Library}
  spec.homepage      = "https://github.com/payshares/ruby-payshares-xdr"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", "4.1.9"
  spec.add_dependency "activemodel", "4.1.9"
  spec.add_dependency "backports", "3.6.4"

  spec.add_development_dependency "bundler", "1.17.3"
  spec.add_development_dependency "rake", "10.4.2"
  spec.add_development_dependency "rspec", "3.2.0"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "simplecov", "0.9.2"
end
