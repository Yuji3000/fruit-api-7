require 'rails_helper'

RSpec.describe "foods index" do
  it 'will route to the /foods page when searching for fruit' do
    VCR.use_cassette("fruit nutrition") do

      input = 96
      response = FoodService.nutrition(input)
      visit root_path

      fill_in "Search for Fruit", with: "banana" 
      click_on "Search"

      expect(current_path).to eq("/fruits")
      expect(page).to have_link("Find Similar Fruits by Nutrition Value")
      click_link "Find Similar Fruits by Nutrition Value"
      expect(current_path).to eq("/fruits/nutritional")
      save_and_open_page
      expect(page).to have_content("Banana")
      expect(page).to have_content("Passionfruit")
      expect(page).to have_content("All fruits with calories between 96 and 106")
    end
  end
end