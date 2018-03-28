class SearchController < ApplicationController
  def index
    @stations = StationService.new(zipcode)
    @sorted   = @stations.sort_stations
  end
end
