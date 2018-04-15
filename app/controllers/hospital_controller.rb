class HospitalController < ApplicationController
  def index
    @location = Location.find_by_name(current_user.location)
  end
end
