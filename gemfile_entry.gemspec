# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gemfile_entry/version'

Gem::Specification.new do |spec|
  spec.name = 'gemfile_entry'
  spec.version = GemfileEntry::VERSION
  spec.authors = ['Jason Hsu']
  spec.email = ['rubygems@jasonhsu.com']

  spec.summary = 'This gem converts a specified gem into text to add to the Gemfile.'
  spec.description = 'Create a Gemfile line that specifies either the latest version of a gem or the version currently in use.'
  spec.homepage = 'https://github.com/jhsu802701/gemfile_entry'
  spec.license = 'MIT'

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
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'sqlite3'
end
