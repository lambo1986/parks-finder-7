require "rails_helper"

RSpec.describe "index for welcome page", vcr: true, type: :feature do
  describe "visiting the index page" do
    it "shows up" do
      visit root_path

      expect(page).to have_link "Park Search"
      expect(page).to have_content "Alabama"
      expect(page).to have_button "Find Parks"
    end

    it "shows parks for a state slected on the same page after clicking the button" do
      visit root_path

      expect(current_path).to eq("/")
      expect(page).to have_link "Park Search"
      expect(page).to have_content "Alabama"
      expect(page).to have_button "Find Parks"

      select("Tennessee", from: :state)
      click_button "Find Parks"

      expect(current_path).to eq("/parks")
      expect(page).to have_content "Parks for the State of TN:"
      expect(page).to have_content "Park Name:"
      expect(page).to have_content "Park Description:"
      expect(page).to have_content "Direction Info:"
      expect(page).to have_content "Hours of Operation:"
    end
  end
end
