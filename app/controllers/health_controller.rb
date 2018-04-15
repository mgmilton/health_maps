class HealthController < ApplicationController
  def new
  end

  def create
    binding.pry
    @health = Health.new
  end
end
