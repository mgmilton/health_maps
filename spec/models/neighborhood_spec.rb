require "rails_helper"

RSpec.describe Neighborhood, type: :model do
  describe "validations" do
    it {should belong_to(:location)}
  end
end
