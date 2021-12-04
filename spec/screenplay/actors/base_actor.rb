# frozen_string_literal: true

class BaseActor < SitePrism::Page
  set_url '/'

  attr_accessor :abilities

  def initialize
    super
    @abilities = []
  end

  def who_can(ability)
    @abilities.push(ability)
    self
  end

  def navigate
    load
    self
  end
end
