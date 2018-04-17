class LocationsController < ApplicationController
  def index
  end

  def show
    @location = Location.find(params[:id])
  end

  def search
    @location = Location.find(params[:name][:id])
    redirect_to location_path(@location)
  end
end
