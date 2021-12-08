# frozen_string_literal: true

require_relative 'base_question'

class SearchResults < BaseQuestion
  attr_accessor :expected_size

  def initialize(expected_size)
    super
    @expected_size = expected_size
  end

  def self.size_is(expected_size)
    TheSearch.new(expected_size)
  end

  def ask(web_user)
    expect(web_user.search_results.size).to eq @expected_size
  end
end
