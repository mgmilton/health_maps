require "rails_helper"

describe "As a guest visitor" do
  describe "when I visit the root, click login, then click sign up" do
    it "presents a form for registration" do
      visit "/"

      click_link "Login"
      click_link "Sign Up"
      expect(current_path).to eq("/users/new")

      fill_in "user[name]", with: "Tom Hanks"
      fill_in "user[location]", with: "Hollywood"
      fill_in "user[email]", with: "user@yahoo.com"
      fill_in "user[password]", with: "password"
      fill_in "user[password_confirmation]", with: "password"
      click_on "Create User"

      expect(current_path).to eq("/users/#{User.last.id}")
      expect(page).to have_content("Welcome, Tom Hanks")
      expect(page).to have_content("Email: user@yahoo.com")
    end


    it "requires a unique email" do
      visit "/"

      click_link "Login"
      click_link "Sign Up"
      expect(current_path).to eq("/users/new")

      fill_in "user[name]", with: "Tom Hanks"
      fill_in "user[location]", with: "Hollywood"
      fill_in "user[email]", with: "user@yahoo.com"
      fill_in "user[password]", with: "password"
      fill_in "user[password_confirmation]", with: "password"
      click_on "Create User"
      click_on "Logout"


      click_link "Login"
      click_link "Sign Up"
      expect(current_path).to eq("/users/new")

      fill_in "user[name]", with: "Tom Hanks"
      fill_in "user[location]", with: "Hollywood"
      fill_in "user[email]", with: "user@yahoo.com"
      fill_in "user[password]", with: "password"
      fill_in "user[password_confirmation]", with: "password"

      expect(current_path).to eq("/users/new")
    end
  end
end
