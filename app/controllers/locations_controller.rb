class LocationsController < ApplicationController
  def index
    # location = LocationConnection.new
    #
    # location.conn
    # location.get_json
    # # @locations = Location.all
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
