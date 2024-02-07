require 'rails_helper'

RSpec.describe "fruit facade" do
  it 'will fruits with similar calorie count' do
    VCR.use_cassette("banan_nutrition_looup") do

      banana_calorie_count = 96
      response = FoodService.nutrition(banana_calorie_count)
      expect(response).to be_a(Array)

      results = FruitFacade.calorie_search(banana_calorie_count)
      expect(results).to be_a(Array)
    end
  end
end