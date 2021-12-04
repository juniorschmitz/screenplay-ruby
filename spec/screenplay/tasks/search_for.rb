# frozen_string_literal: true

class SearchFor
  attr_accessor :item_name

  def initialize(item_name)
    @item_name = item_name
  end

  def self.item(item_name)
    SearchFor.new(item_name)
  end

  def perform(actor)
    actor.input_search.set "#{@item_name}\n"
  end
end
