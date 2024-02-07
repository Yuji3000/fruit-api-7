class FruitsController < ApplicationController
  def index
    @fruit = params["search"]
  end
end