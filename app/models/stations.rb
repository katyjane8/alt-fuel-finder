class Stations
  attr_reader :station_name, :address, :fuel_types,
              :distance, :access_times

  def initialize(attrs)
    @station_name = attrs[:station_name]
    @address = attrs[:street_address]
    @fuel_types = attrs[:fuel_type_code]
    @distance = attrs[:distance]
    @access_times = attrs[:access_times]
  end
end
