class HealthsController < ApplicationController
  before_all :set_health
  def new
    
  end

  def create
    @health = Health.new
  end

  private
    def set_health
      @health = Health.new(user_id: current_user.id)
    end
end
