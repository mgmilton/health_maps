require "rails_helper"

describe "As a registered user" do
  describe "when I visit the root and click login" do
    it "logs me in and send to dashboard" do
      user = create(:user)
      visit "/"

      click_link "Login"
      fill_in "email", with: user.email
      fill_in "password", with: user.password
      click_on "Sign In"

      expect(current_path).to eq("/")
      expect(page).to have_content("Logged in as Mister Map")
      click_on "Logout"

      expect(current_path).to eq("/")
    end


    it "renders a new session with incorrect info" do
      user = create(:user)
      visit "/"

      click_link "Login"

      fill_in "email", with: "fake email"
      fill_in "password", with: user.password
      click_on "Sign In"

      expect(current_path).to eq("/login")
    end
  end
end
