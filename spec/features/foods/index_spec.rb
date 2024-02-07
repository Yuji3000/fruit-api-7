require 'rails_helper'

RSpec.describe "foods index" do
  it 'will route to the /foods page when searching for fruit' do
    VCR.use_cassette("fruit") do

      input = "banana"
      response = FoodService.search(input)
      visit root_path

      fill_in "Search for Fruit", with: "banana" 
      click_on "Search"
save_and_open_page
      expect(current_path).to eq("/foods")
      expect(page).to have_content("Banana")
      expect(page).to have_content("Musaceae")
      expect(page).to have_content("Zingiberales")

    end
  end
end