require "rails_helper"
describe "Hospital Controller" do
  it "displays index of all hospitals" do
    VCR.use_cassette("hospitals", :record => :new_episodes) do
      user = create(:user)
      location = create(:location)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit "/hospital/index"

      expect(current_path).to eq("/hospital/index")
    end
  end
end
