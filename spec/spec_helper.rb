# frozen_string_literal: true

require 'rspec'
require_relative 'screenplay/actors/web_user'
require_relative 'screenplay/abilities/navigate_on_web'
require_relative 'screenplay/questions/the_search'
require_relative 'screenplay/tasks/search_for'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
