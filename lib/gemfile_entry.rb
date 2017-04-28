require 'gemfile_entry/version'

#
module GemfileEntry
  def self.latest(gem1)
    # rubocop:disable Metrics/LineLength
    version_json = `curl -s https://rubygems.org/api/v1/versions/#{gem1}/latest.json`
    # rubocop:enable Metrics/LineLength
    version = version_json.delete('"').delete('{\version\:\)').delete('\}')
    gemfile_line = "gem '#{gem1}', '#{version}'"
    gemfile_line
  end

  def self.active(gem1)
    # NOTE: The delete and gsub commands do not work for removing
    # substrings containing dashes.
    # As a result, - is converted to _.
    path = `bundle show #{gem1}`
    path_last = path.split('/').last
    path_last_u = path_last.tr('-', '_')
    gem1_u = gem1.tr('-', '_')
    version = path_last_u.delete(gem1_u).delete('_').delete("\n")
    gemfile_line = "gem '#{gem1}', '#{version}'"
    puts gemfile_line
    gemfile_line
  end
end
# Your new gem is a module by default.  You may wish to use a class instead.
