class SearchController < ApplicationController
  def index
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV["NREL_API_KEY"]}&location=80203=&fuel_type=ELEC&limit=10")
    result = parse_json(response)
  end

  private

  def parse_json(response)
    JSON.parse(response.body)
  end

end
