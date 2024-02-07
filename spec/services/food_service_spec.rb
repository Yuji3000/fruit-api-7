require "rails_helper"

RSpec.describe "fruit_service" do
  it 'will return fruit info from an api' do
    VCR.use_cassette("search_fruit") do

      input = "banana"
      response = FoodService.search(input)

      expect(response).to have_key(:name)
      expect(response).to have_key(:id)
      expect(response).to have_key(:family)
      expect(response).to have_key(:order)
      expect(response).to have_key(:genus)
      expect(response).to have_key(:nutritions)
    end
  end

  it 'will return fruit info related to another fruit' do
    VCR.use_cassette("banan_nutrition") do

      banana_calorie_count = 96
      response = FoodService.nutrition(banana_calorie_count)
      expect(response).to be_a(Array)
      expect(response[0]).to have_key(:name)
      expect(response[0]).to have_key(:id)
      expect(response[0]).to have_key(:family)
      expect(response[0]).to have_key(:order)
      expect(response[0]).to have_key(:genus)
      expect(response[0]).to have_key(:nutritions)
    end
  end
end