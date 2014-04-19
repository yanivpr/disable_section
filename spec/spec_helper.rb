$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'bundler/setup'
require 'rails'
require 'rspec'
require 'disable_section'

Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|

end

#ENV["RAILS_ENV"] = "test"
#require 'bundler/setup'
#Bundler.setup
#
#require 'rails/all'
##require 'active_support'
##require 'active_support/core_ext'
#require 'rspec/rails'
#require 'action_view'
#require 'action_view/helpers'
#require 'action_view/base'
#require 'action_view'
#require 'rspec/rails/view_rendering'
#require 'rspec/core/formatters/html_formatter'
#require 'rspec/rails/example/view_example_group'
#require 'disable_section'
#
#RSpec.configure do |config|
#  config.include DisableSection::DisableSectionHelper
#end