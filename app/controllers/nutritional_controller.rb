class NutritionalController < ApplicationController
  def index
    @fruit = params[:name]
    @calories = params[:calories]
    @all_info = FoodService.nutrition((params[:calories].to_i))
  end
end