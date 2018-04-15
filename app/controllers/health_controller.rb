class HealthController < ApplicationController
  def new
  end

  def create
    @health = Health.new
  end
end
