# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'espresso_path/version'

Gem::Specification.new do |spec|
  spec.name          = "espresso_path"
  spec.version       = EspressoPath::VERSION
  spec.authors       = ["KickinEspresso"]
  spec.email         = ["chris@kickinespresso.com"]

  spec.summary       = %q{GeoPath Ruby API Wrapper}
  spec.description   = %q{Use the GeoPath API via this Ruby Gem}
  spec.homepage      = "https://github.com/kickinespresso/espresso_path"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  #spec.add_dependency 'httparty'
  spec.add_runtime_dependency 'httparty', '~> 0'

  spec.add_development_dependency 'dotenv',  '~> 2.2', '>= 2.2.1'
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'simplecov','~> 0.15.1'
  spec.add_development_dependency 'rubocop', '~> 0.52.1'
end
