require "rails_helper"

RSpec.describe ParksFacade, vcr: true do
  describe "initialize" do
    it "exists" do
      parks_facade = ParksFacade.new("WA")

      expect(parks_facade).to be_a ParksFacade
      expect(parks_facade.params).to be_a String
    end
  end

  describe "class methods" do
    it "has a .parks_by_state method" do
      parks_facade = ParksFacade.new("WA")

      expect(parks_facade.parks_by_state).to be_an Array
      expect(parks_facade.parks_by_state.first).to be_a Park
    end
  end
end
