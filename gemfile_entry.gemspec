# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gemfile_entry/version'

Gem::Specification.new do |spec|
  spec.name = 'gemfile_entry'
  spec.version = GemfileEntry::VERSION
  spec.authors = ['Jason Hsu']
  spec.email = ['jhsu802701@jasonhsu.com']

  spec.summary = 'GENERIC SUMMARY'
  spec.description = 'GENERIC DESCRIPTION'
  spec.homepage = 'HTTP://WWW.EXAMPLE.COM'
  spec.license = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)

  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'

  spec.add_development_dependency 'simplecov'

  spec.add_development_dependency 'ruby-graphviz'

  spec.add_development_dependency 'gemsurance'

  spec.add_development_dependency 'bundler-audit'

  spec.add_development_dependency 'sandi_meter'

  spec.add_development_dependency 'rubocop'
end
