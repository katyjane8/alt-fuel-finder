class StationService
  attr_reader :zipcode

  def initialize(zipcode)
    @zipcode = zipcode
  end

  def conn
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["NREL_API_KEY"]}&location=#{zipcode}=&fuel_type=ELEC,LPG&limit=10")
    result = parse_json(response)
    @stations = result["fuel_stations"]
  end

  def sort_stations
    @stations.sort_by { |distance, miles| miles }
  end

  private

  def parse_json(response)
    JSON.parse(response.body)
  end

end
