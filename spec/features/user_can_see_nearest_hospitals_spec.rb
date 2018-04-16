require "rails_helper"
describe "Hospital Controller" do
  it "displays index of all hospitals" do
    VCR.use_cassette("hospitals", :record => :new_episodes) do
      location = create(:location)
      visit "/locations"
      select("Rip City", from: "name[id]")
      click_on "Search"
      expect(current_path).to eq("/locations/#{location.id}")
    end
  end
end
