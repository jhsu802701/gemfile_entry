# rubocop:disable Metrics/BlockLength
require 'spec_helper'

RSpec.describe GemfileEntry do
  it 'has a version number' do
    expect(GemfileEntry::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(true).to eq(true)
  end

  def check_gem_latest(gem1)
    # Actual gem version json
    json1 = `curl -s https://rubygems.org/api/v1/versions/#{gem1}/latest.json`

    gline = GemfileEntry.latest(gem1)
    # Replace dashes with underscores
    gline_u = gline.tr('-', '_')
    gem1_u = gem1.tr('-', '_')
    vnum = gline_u.delete("gem '#{gem1_u}', ").delete("'")

    # Expected gem version json based on name and version number
    json2 = "{\"version\":\"#{vnum}\"}"

    expect(json1).to eq(json2)
  end

  def check_gem_active(gem1)
    # Actual result of bundle show command
    path1 = `bundle show #{gem1}`
    path1_last = path1.split('/').last

    # Expected result of bundle show command based on name and version number
    # NOTE: The delete and gsub commands do not work for removing
    # substrings containing dashes.
    # As a result, - is converted to _.
    gline = GemfileEntry.active(gem1)
    gline_u = gline.tr('-', '_')
    gem1_u = gem1.tr('-', '_')
    vnum = gline_u.delete("gem '#{gem1_u}', ").delete("'")
    path2_last = "#{gem1}-#{vnum}\n"

    expect(path1_last).to eq(path2_last)
  end

  it 'output a Gemfile line specifying the latest version of a gem' do
    check_gem_latest('rails')
    check_gem_latest('pg')
    check_gem_latest('nokogiri')
    check_gem_latest('rubocop')
    check_gem_latest('rails_best_practices') # Has underscore
    check_gem_latest('sandi_meter') # Has underscore
    check_gem_latest('bundler-audit') # Has dash
    check_gem_latest('gemsurance')
    check_gem_latest('rspec')
  end

  it 'output a Gemfile line specifying the currently active version of a gem' do
    check_gem_active('rspec')
    check_gem_active('rubocop')
    check_gem_active('bundler-audit') # Has dash
    check_gem_active('gemsurance')
    check_gem_active('sandi_meter') # Has underscore
  end
end
# rubocop:enable Metrics/BlockLength
