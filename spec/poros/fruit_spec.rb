require 'rails_helper'

RSpec.describe "food" do
  it "Should exist" do
    VCR.use_cassette("search_fruit") do

      input = "banana"
      response = FoodService.search(input)
      fruit = Fruit.new(response)

      expect(fruit).to be_an_instance_of(Fruit)
      expect(fruit.name).to eq("Banana")
      expect(fruit.family).to eq("Musaceae")
      expect(fruit.order).to eq("Zingiberales")
      expect(fruit.genus).to eq("Musa")
      expect(fruit.calories).to eq(96)
      expect(fruit.fat).to eq(0.2)
      expect(fruit.sugar).to eq(17.2)
      expect(fruit.carbohydrates).to eq(22.0)
      expect(fruit.protein).to eq(1.0)
    end
  end
end