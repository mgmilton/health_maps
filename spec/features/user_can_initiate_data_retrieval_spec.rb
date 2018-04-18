require "rails_helper"

describe "Location Controller" do
  it "allows me to select a location" do
    VCR.use_cassette("cdc service", :record => :new_episodes) do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      location = create(:location)
      neighborhood = create(:neighborhood, location: location)
      visit "/locations"
      select("Portland", from: "name[id]")
      click_on "Search"
      expect(current_path).to eq("/locations/#{location.id}")
    end
  end

  it "displays data on location" do
    VCR.use_cassette("cdc service", :record => :new_episodes) do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
      location = create(:location)
      neighborhood = create(:neighborhood, location: location)
      visit"/locations/22"
      expect(page).to have_content("Portland")
    end
  end
end
