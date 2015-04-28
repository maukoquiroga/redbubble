# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'redbubble/version'

Gem::Specification.new do |spec|
  spec.name          = 'redbubble'
  spec.version       = Redbubble::VERSION
  spec.authors       = ['maukoquiroga']
  spec.email         = ['maukoquiroga@gmail.com']

  spec.summary       = %q{Creates browsable HTML files from a XML file containing RedBubble's works.}
  spec.homepage      = 'https://github.com/maukoquiroga/redbubble'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'nokogiri', '~> 1.6'
  spec.add_runtime_dependency 'sax-machine'
  spec.add_runtime_dependency 'thor', '~> 0.19.1'

  spec.add_development_dependency 'aruba'
  spec.add_development_dependency 'bundler', "#{defined?(Rubinius) ? '1.6.2' : '< 2'}"
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'rspec-html-matchers'
end
