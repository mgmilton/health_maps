require 'rails_helper'

RSpec.describe Location, type: :model do
  it {should validate_presence_of(:name)}
  it {should have_many(:neighborhoods)}

  describe "#cdc_api_call" do
    it "establishes a connection to the cdc api" do
      VCR.use_cassette("vermont cheddar", :record => :new_episodes) do
        burlington = create(:location, name: "Burlington")
        array = burlington.cdc_api_call
        expect(array.length).to be(11)
      end
    end
  end

  describe "#write_neighborhood_health_data" do
    it "establishes a connection to the cdc api" do
      VCR.use_cassette("neighborhood cheddar", :record => :new_episodes) do
        burlington = create(:location, name: "Burlington")
        a = burlington.write_neighborhood_health_data
        expect(a.first[:access2_crudeprev].to_f).to eq(9.2)
        expect(a.first[:binge_crudeprev].to_f).to eq(23.0)
      end
    end
  end
end
