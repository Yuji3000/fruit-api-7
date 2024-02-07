class FruitsController < ApplicationController
  def index
    fruit_search = params["search"]
    fruit_service = FoodService.search(fruit_search)
    @fruit = Fruit.new(fruit_service)
    # require 'pry'; binding.pry
  end
end