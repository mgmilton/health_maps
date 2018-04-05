class LocationsController < ApplicationController

  def show
    @location = Location.find(params[:id])
  end

  def search
    @location = Location.find_by_name(params[:name])
    redirect_to location_path(@location)
  end
  private

    def location_params
      params.require(:location).permit(:name, :state)
    end
end
