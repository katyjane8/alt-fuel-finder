class Stations
  attr_reader :name, :address, :fuel_types,
              :distance, :access_times

  def initialize(attrs)
    @name = attrs[:name]
    @address = attrs[:street_address]
    @fuel_types = attrs[:fuel_type]
    @distance = attrs[:distance]
    @access_times = attrs[:access_times]
  end
end
