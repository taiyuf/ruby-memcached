# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'memcached/version'

Gem::Specification.new do |spec|
  spec.name          = "memcached"
  spec.version       = Memcached::VERSION
  spec.authors       = ["Taiyu Fujii"]
  spec.email         = ["tf.900913@gmail.com"]
  spec.summary       = %q{Simple interface for memcached for ruby.}
  spec.description   = %q{"dalli" required.}
  spec.homepage      = "https://github.com/taiyuf/ruby-memcached"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w{ lib lib/memcached }

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "dalli"
end
