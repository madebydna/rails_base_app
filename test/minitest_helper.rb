ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__) 
require 'minitest/autorun'
require 'capybara/rails'

# to run an individual test file
# ruby -Itest test/integration/pages_integration_test.rb
# to run entire test suite
#ruby test.rb

# Require ruby files in support dir.
Dir['./test/support/**/*.rb'].each { |f| require f }

#http://code-ningja.posterous.com/73460416
# If description name ends with 'integration', use this IntegrationSpec class.
class IntegrationSpec < MiniTest::Spec
  include Rails.application.routes.url_helpers
  include Capybara::DSL
end
MiniTest::Spec.register_spec_type /integration$/i, IntegrationSpec

Turn.config.format = :outline

# Note: in addition to the regular capybara matchers
#http://rubydoc.info/github/jnicklas/capybara/master/Capybara/Node/Matchers
#you can use these type of matchers in integration specs
# thanks to capybara_minitest_spec gem
#http://rubydoc.info/github/jnicklas/capybara/Capybara/RSpecMatchers
# use with must or wont
# page.must_have_content('MetaboDB Home')