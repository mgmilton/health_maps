class LocationsController < ApplicationController
  before_action :require_current_user

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
    def require_current_user
      render file: "#{Rails.root}/public/404.html" , status: 404  if current_user.nil?
    end
end
