class LocationsController < ApplicationController
  def index
    @locations = Location.all.limit(20)
  end

  def show
    @location = Location.find(params[:id])
  end

  def search
    @location = Location.find(params[:name][:id])
    redirect_to location_path(@location)
  end
end
