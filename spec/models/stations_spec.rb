require 'rails_helper'

RSpec.describe Stations, type: :model do
  context "initialize" do
    it "exists with valid data" do
      attrs = {
        station_name: "My station",
        street_address: "1223 address st",
        fuel_type_code: "ELEC",
        distance: "24.456",
        access_times: "MO 2:00-5:00"
      }

      station = Stations.new(attrs)

      expect(station.station_name).to eq "My station"
      expect(station.address).to eq "1223 address st"
      expect(station.fuel_types).to eq "ELEC"
      expect(station.distance).to eq "24.456"
      expect(station.access_times).to eq "MO 2:00-5:00"
    end
  end
end
