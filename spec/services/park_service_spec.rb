require "rails_helper"

RSpec.describe ParkService, vcr: true do
  describe ".all_parks" do
    it "returns an array of Park objects" do
      parks = ParkService.new.all_parks

      expect(parks[:data].first[:fullName]).to be_a String
      expect(parks[:data].first[:description]).to be_a String
      expect(parks[:data].first[:directionsUrl]).to be_a String
      expect(parks[:data].first[:operatingHours].first[:standardHours]).to be_a Hash
    end
  end

  describe ".parks_by_state" do
    it "returns an array of Park objects for a given state" do
      parks = ParkService.new.parks_by_state("TN")
      park = parks.first

      expect(park[:fullName]).to be_a String
      expect(park[:description]).to be_a String
      expect(park[:directionsUrl]).to be_a String
      expect(park[:operatingHours].first[:standardHours]).to be_a Hash
    end
  end
end
