class FruitFacade
  def self.calorie_search(input)
    data = FoodService.nutrition(input)
    data.map do |fruit|
      Fruit.new(fruit)
    end
  end
end