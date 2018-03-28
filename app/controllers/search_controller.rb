class SearchController < ApplicationController
  def index
    @info = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1.json?api_key=#{ENV["NREL_API_KEY"]}&fuel_type=E85,ELEC&state=CO&limit=2")
  end
end
