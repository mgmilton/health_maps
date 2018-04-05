class LocationsController < ApplicationController
  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to location_page(@location)
    else
      render :new
    end
  end

  def show
    @location = Location.find_by_slug(params[:slug])
  end

  private

    def location_params
      params.require(:location).permit(:name)
    end
end
