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

  private

    def location_params
      params.require(:location).permit(:name, :state)
    end
end
