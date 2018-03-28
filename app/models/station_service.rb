class StationService
   
  def initialize
  end

  def conn
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["NREL_API_KEY"]}&location=80203=&fuel_type=ELEC,LPG&limit=10")
    result = parse_json(response)
    stations_parsed = result["fuel_stations"]
  end

  def stations_result
    stations = Stations.new(conn)
  end

  def sort_stations
    sorted = conn.sort_by { |distance, miles| miles }
    sorted.reverse
  end


  private

  def parse_json(response)
    JSON.parse(response.body)
  end

end
