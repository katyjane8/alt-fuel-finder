require 'rails_helper'

feature "User can search on the homepage by" do
  scenario "filling in the form" do
    visit "/"

    fill_in "q", with: 80203
    click_on "Locate"

    expect(current_path).to eq("/search")

    expect(page).to have_content("Station Result Count: 10")

    within(".stations") do
      expect(".station_name").to have_content("Walgreens")
      expect(".street_address").to have_content("80925 US Highway ")
      expect(".fuel_types").to have_content("")
    end
  end
end
