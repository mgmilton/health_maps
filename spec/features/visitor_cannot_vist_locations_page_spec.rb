require "rails_helper"

describe "As a guest visitor" do
  describe "When I try to visit the locations page" do
    it "presents me with a 404" do
      visit "/locations"

      expect(page.status_code).to eq(404)
    end

    it "works for a registered user" do
      user = create(:user)
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      visit "/locations"

      expect(page.status_code).to eq(200)
    end
  end
end
