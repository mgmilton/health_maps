require "rails_helper"

describe LocationConnection do
  it "returns collection of CDC data for a user's location" do
    VCR.use_cassette("cdc service", :record => :new_episodes) do
      user = create(:user)

      subject = LocationConnection.new(user.location)
      subject.get_jsons
      neighborhood_health_data = subject.get_jsons
      percentage_of_population_with_high_bp = neighborhood_health_data.first[:bphigh_crudeprev]
      expect(neighborhood_health_data.length). to eq(173)
      expect(percentage_of_population_with_high_bp). to eq("26.3")
    end
  end
end


describe LocationConnection do
  it "works for any city" do
      VCR.use_cassette("cdc service", :record => :new_episodes) do
        subject = LocationConnection.new("Cheyenne")
        subject.get_jsons
        neighborhood_health_data = subject.get_jsons
        percentage_of_population_with_high_bp = neighborhood_health_data.first[:arthritis_crudeprev]
        expect(neighborhood_health_data.length). to eq(16)
        expect(percentage_of_population_with_high_bp). to eq("23.6")
    end
  end
end

describe LocationConnection do
  it "works for a big city" do
    VCR.use_cassette("cdc service Big City", :record => :new_episodes) do
      subject = LocationConnection.new("Houston")
      subject.get_jsons
      neighborhood_health_data = subject.get_jsons
      percentage_of_population_with_arthritis = neighborhood_health_data.first[:arthritis_crudeprev]
      expect(neighborhood_health_data.length). to eq(552)
      expect(percentage_of_population_with_arthritis). to eq("23.8")
    end
  end
end
