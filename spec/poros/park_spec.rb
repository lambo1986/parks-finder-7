require "rails_helper"

RSpec.describe Park do
  it "exists" do
    attrs = {
      fullName: "ohio park",
      description: "ohio park description",
      directionsUrl: "ohio park directions",
      operatingHours: [{
        standardHours:
      {monday: "8am-5pm", tuesday: "8am-5pm", wednesday: "8am-5pm", thursday: "8am-5pm", from: "8am-5pm", to: "8am-5pm"}
      }]
    }

    park = Park.new(attrs)

    expect(park).to be_a Park
    expect(park.name).to be_a String
    expect(park.description).to be_a String
    expect(park.directions).to be_a String
    expect(park.hours).to be_a Hash
  end
end
