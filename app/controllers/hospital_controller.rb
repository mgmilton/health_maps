class HospitalController < ApplicationController
  def index
    if current_user
      @location = Location.find_by_name(current_user.location)
    else
      @location = Location.find_by_name("Honolulu")
    end
  end

  private
    def require_current_user
      render file: "#{Rails.root}/public/404.html" , status: 404  if current_user.nil?
    end
end
