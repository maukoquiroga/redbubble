require 'rubygems'
require 'bundler'
Bundler.setup :default, :test

Dir[File.expand_path(File.join('spec', 'support', '**', '*.rb'))].each { |f| require f }

require 'redbubble'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.raise_errors_for_deprecations!
  config.order = :random
  Kernel.srand config.seed
end
