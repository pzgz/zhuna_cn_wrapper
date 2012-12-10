# Adding following snippets to introduce rails env and codes for command line using
require 'rubygems'
gem 'actionpack'
gem 'activesupport'
gem 'activemodel'
gem 'railties'
require 'rails/all'
require 'optparse'

require 'zhuna_cn_wrapper'
require 'pp'

def get_cities
  api = ZhunaCnWrapper::City.new
  cities = api.get_cities
  pp cities
end

def get_hotels
  api = ZhunaCnWrapper::Hotel.new
  rows = api.search_hotels '0201'
  pp rows

  row = api.get_info(6837)
  pp row

  pics = api.get_images(6837)
  pp pics
end

options = {}
usage = "Usage: ruby -Ilib examples/test.rb METHOD_NAME(get_cities/get_hotels) AGENT_ID AGENT_MD"
OptionParser.new do |opts|
  opts.banner = usage
end.parse!
if ARGV && ARGV.count == 3
  agent_id = ARGV[1]
  agent_md = ARGV[2]
  method_name = ARGV[0]
else
  puts usage
end

ZhunaCnWrapper.setup do |config|
  config.api_agent_id = agent_id
  config.api_agent_md = agent_md
end

eval method_name