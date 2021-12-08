# frozen_string_literal: true

require_relative 'spec_helper'

describe 'Search' do
  before(:all) do
    @john = WebUser.new.who_can(NavigateOnWeb.with(:chrome))
  end

  it 'Searches for valid products' do
    @john.navigate
         .attempts_to(SearchFor.item('shirt'))
         .should_see_that(SearchResults.size_is(1))
  end
end
