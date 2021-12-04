# frozen_string_literal: true

require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'site_prism'
require_relative 'base_actor'

class WebUser < BaseActor
  set_url 'http://automationpractice.com/index.php'

  element  :input_search, '#search_query_top'
  elements :search_results, '.ajax_block_product'

  def attempts_to(task)
    task.perform(self)
    self
  end

  def should_see_that(question)
    question.ask(self)
    self
  end
end
