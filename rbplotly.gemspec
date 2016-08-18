# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'plotly/version'

Gem::Specification.new do |spec|
  spec.name          = 'rbplotly'
  spec.version       = Plotly::VERSION
  spec.authors       = ['y4ashida']
  spec.email         = ['y4ashida@gmail.com']

  spec.summary       = 'A Ruby wrapper to the PlotLy REST API.'
  spec.description   = 'A Ruby wrapper to the PlotLy REST API.'
  spec.homepage      = 'https://github.com/y4ashida/rbplotly'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday',            '~> 0.9'
  spec.add_dependency 'faraday_middleware', '~> 0.10'
  spec.add_dependency 'uuidtools',          '~> 2.1'
  spec.add_dependency 'launchy',            '~> 2.4'

  spec.add_development_dependency 'bundler',       '~> 1.12'
  spec.add_development_dependency 'rake',          '~> 10.0'
  spec.add_development_dependency 'rspec',         '~> 3.5'
  spec.add_development_dependency 'guard-rspec',   '~> 4.7'
  spec.add_development_dependency 'guard-rubocop', '~> 1.2'
  spec.add_development_dependency 'yard',          '~> 0.9'
end