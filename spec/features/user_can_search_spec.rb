require 'rails_helper'

feature "User can search on the homepage by" do
  scenario "filling in the form" do
    visit "/"

    fill_in "q", with: 80203

    click_on "Locate"

    expect(current_path).to eq("/search")

    expect(page).to have_content("Station Result Count: 10")

    within(first(".stations")) do
      expect(page).to have_content("Walgreens")
      expect(page).to have_content("80925 US Highway 111")
      expect(page).to have_content("ELEC")
      expect(page).to have_content("0.68495")
      expect(page).to have_content("MO: 12:00am-12:00am")
    end
  end
end
