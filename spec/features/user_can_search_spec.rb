require 'rails_helper'

feature "User can search on the homepage by" do
  scenario "filling in the form" do
    visit "/"

    fill_in "q", with: 80203

    click_on "Locate"

    expect(current_path).to eq("/search")

    expect(page).to have_content("Station Result Count: 10")

    within(first(".stations")) do
      expect(page).to have_content("UDR")
      expect(page).to have_content("800 Acoma St")
      expect(page).to have_content("ELEC")
      expect(page).to have_content("0.31422")
      expect(page).to have_content("24 hours daily")
    end
  end
end
