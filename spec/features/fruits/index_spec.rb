require 'rails_helper'

RSpec.describe "fruits index" do
  it 'will route to the /fruits page when searching for fruit' do
    visit root_path

    fill_in "Search for Fruit", with: "banana" 
    click_on "Search"
    expect(current_path).to eq("/fruits")
  end
end