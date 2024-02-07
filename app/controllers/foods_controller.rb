class FoodsController < ApplicationController
  def index
    food_search = params["search"]
    food_service = FoodService.search(food_search)
    @food = Fruit.new(food_service)
    # require 'pry'; binding.pry
  end
end