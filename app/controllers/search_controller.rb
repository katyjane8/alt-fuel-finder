class SearchController < ApplicationController
  def index
    @stations = StationService.new
    @station_info = @stations.sort_stations
  end
end
