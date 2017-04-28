# GemfileEntry

[![CircleCI](https://circleci.com/gh/jhsu802701/gemfile_entry.svg?style=svg)](https://circleci.com/gh/jhsu802701/gemfile_entry)
[![Dependency Status](https://gemnasium.com/badges/github.com/jhsu802701/gemfile_entry.svg)](https://gemnasium.com/github.com/jhsu802701/gemfile_entry)
[![security](https://hakiri.io/github/jhsu802701/gemfile_entry/master.svg)](https://hakiri.io/github/jhsu802701/gemfile_entry/master)
[![Code Climate](https://codeclimate.com/github/jhsu802701/gemfile_entry/badges/gpa.svg)](https://codeclimate.com/github/jhsu802701/gemfile_entry)
[![Test Coverage](https://codeclimate.com/github/jhsu802701/gemfile_entry/badges/coverage.svg)](https://codeclimate.com/github/jhsu802701/gemfile_entry/coverage)

GemfileEntry converts a specified gem into text to add to the Gemfile.  You have the option of specifying the latest version of the gem or the current version used on your project.  I created
this gem for use in my Rails Neutrino project, which automatically creates a new high-quality Rails app from scratch.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gemfile_entry'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gemfile_entry

## Usage

### Getting the Latest Version of a Gem
* Enter the following command:
```
GemfileEntry.latest(name of gem)
```
* Example:
```
GemfileEntry.latest('rake')
```
yields
```
gem 'rake', '12.0.0'
```

### Getting the Currently Used Version of a Gem
* Enter the following command:
```
GemfileEntry.active(name of gem)
```
* Example:
```
GemfileEntry.active('rake')
```
yields
```
gem 'rake', '10.5.0'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jhsu802701/gemfile_entry. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Bash Scripts
### Testing this gem
After you download this source code, enter `sh gem_test.sh` to set up and test this gem.

### Testing this gem's source code
Enter `sh code_test.sh` to test the quality of this gem's source code.
### Running this gem in irb
Enter `sh gem_console.sh`.

### Installing this gem
Enter `sh gem_install.sh`.
### Testing the gem, source code, and installation process
Enter `sh all.sh` to run the gem_test.sh, code_test.sh, and gem_install.sh scripts.
