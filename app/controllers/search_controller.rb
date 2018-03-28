class SearchController < ApplicationController
  def index
    @stations = StationService.new
    @station_info = @stations.sort_stations
    @station_model = @stations.stations_result
  end
end
