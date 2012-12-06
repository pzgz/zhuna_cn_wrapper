# Adding following snippets to introduce rails env and codes for command line using
require 'rubygems'
gem 'actionpack'
gem 'activesupport'
gem 'activemodel'
gem 'railties'
require 'rails/all'

require 'zhuna_cn_wrapper'
require 'pp'

# For testing, run "ruby examples/get_cities.rb" in root of the gem

ZhunaCnWrapper.setup do |config|
  config.api_agent_id = 'SET_AGENT_ID_HERE'
  config.api_agent_md = 'SET_AGENT_MD_HERE'
end

api = ZhunaCnWrapper::City.new
cities = api.get_cities
pp cities