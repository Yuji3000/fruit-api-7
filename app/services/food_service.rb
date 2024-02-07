require 'faraday'

class FoodService
  def self.search(input)
    conn = Faraday.new(url: "https://www.fruityvice.com/api/") 

    response = conn.get("fruit/#{input}")
    json = JSON.parse(response.body, symbolize_names: true)
  end

  def self.nutrition(nutrient_num)
    conn = Faraday.new(url: "https://www.fruityvice.com/api/") 

    response = conn.get("fruit/calories?min=#{nutrient_num}&max=#{(nutrient_num + 10)}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end