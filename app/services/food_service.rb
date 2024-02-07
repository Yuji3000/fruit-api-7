require 'faraday'

class FoodService
  def self.search(input)
    conn = Faraday.new(url: "https://www.fruityvice.com/api/") 

    response = conn.get("fruit/#{input}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end