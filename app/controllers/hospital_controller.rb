class HospitalController < ApplicationController
  before_action :require_current_user
  def index
    @location = Location.find_by_name(current_user.location)
  end

  private
    def require_current_user
      render file: "#{Rails.root}/public/404.html" , status: 404  if current_user.nil?
    end
end
