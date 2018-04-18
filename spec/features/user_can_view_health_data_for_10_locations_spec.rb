require "rails_helper"

describe "as a user" do
  describe "when I visit the location index" do
    it "allows me to select a location" do
      VCR.use_cassette("denver", :record => :new_episodes) do
        user = create(:user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        location = create(:location, name: "Denver")
        neighborhood = create(:neighborhood, location: location)

        visit "/"
        click_link "Locations"
        select("Denver", from: "name[id]")
        click_on "Search"

        expect(current_path).to eq("/locations/#{location.id}")
        expect(page).to have_content("Denver")
      end
    end

    it "allows me to select a location" do
      VCR.use_cassette("Detroit", :record => :new_episodes) do
        user = create(:user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        location = create(:location, name: "Detroit")
        neighborhood = create(:neighborhood, location: location)

        visit "/"
        click_link "Locations"
        select("Detroit", from: "name[id]")
        click_on "Search"

        expect(current_path).to eq("/locations/#{location.id}")
        expect(page).to have_content("Detroit")
      end
    end



    it "allows me to select a location" do
      VCR.use_cassette("Carlsbad", :record => :new_episodes) do
        user = create(:user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        location = create(:location, name: "Carlsbad")
        neighborhood = create(:neighborhood, location: location)

        visit "/"
        click_link "Locations"
        select("Carlsbad", from: "name[id]")
        click_on "Search"

        expect(current_path).to eq("/locations/#{location.id}")
        expect(page).to have_content("Carlsbad")
      end
    end



    it "allows me to select a location" do
      VCR.use_cassette("Troy", :record => :new_episodes) do
        user = create(:user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        location = create(:location, name: "Troy")
        neighborhood = create(:neighborhood, location: location)

        visit "/"
        click_link "Locations"
        select("Troy", from: "name[id]")
        click_on "Search"

        expect(current_path).to eq("/locations/#{location.id}")
        expect(page).to have_content("Troy")
      end
    end



    it "allows me to select a location" do
      VCR.use_cassette("Birmingham", :record => :new_episodes) do
        user = create(:user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        location = create(:location, name: "Birmingham")
        neighborhood = create(:neighborhood, location: location)

        visit "/"
        click_link "Locations"
        select("Birmingham", from: "name[id]")
        click_on "Search"

        expect(current_path).to eq("/locations/#{location.id}")
        expect(page).to have_content("Birmingham")
      end
    end


    it "allows me to select a location" do
      VCR.use_cassette("waco", :record => :new_episodes) do
        user = create(:user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        location = create(:location, name: "Waco")
        neighborhood = create(:neighborhood, location: location)

        visit "/"
        click_link "Locations"
        select("Waco", from: "name[id]")
        click_on "Search"

        expect(current_path).to eq("/locations/#{location.id}")
        expect(page).to have_content("Waco")
      end
    end


    it "allows me to select a location" do
      VCR.use_cassette("Lynn", :record => :new_episodes) do
        user = create(:user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        location = create(:location, name: "Lynn")
        neighborhood = create(:neighborhood, location: location)

        visit "/"
        click_link "Locations"
        select("Lynn", from: "name[id]")
        click_on "Search"

        expect(current_path).to eq("/locations/#{location.id}")
        expect(page).to have_content("Lynn")
      end
    end


    it "allows me to select a location" do
      VCR.use_cassette("Flint", :record => :new_episodes) do
        user = create(:user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        location = create(:location, name: "Flint")
        neighborhood = create(:neighborhood, location: location)

        visit "/"
        click_link "Locations"
        select("Flint", from: "name[id]")
        click_on "Search"

        expect(current_path).to eq("/locations/#{location.id}")
        expect(page).to have_content("Flint")
      end
    end


    it "allows me to select a location" do
      VCR.use_cassette("Roswell", :record => :new_episodes) do
        user = create(:user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        location = create(:location, name: "Roswell")
        neighborhood = create(:neighborhood, location: location)

        visit "/"
        click_link "Locations"
        select("Roswell", from: "name[id]")
        click_on "Search"

        expect(current_path).to eq("/locations/#{location.id}")
        expect(page).to have_content("Roswell")
      end
    end

    it "allows me to select a location" do
      VCR.use_cassette("Sandy", :record => :new_episodes) do
        user = create(:user)
        allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

        location = create(:location, name: "Sandy")
        neighborhood = create(:neighborhood, location: location)

        visit "/"
        click_link "Locations"
        select("Sandy", from: "name[id]")
        click_on "Search"

        expect(current_path).to eq("/locations/#{location.id}")
        expect(page).to have_content("Sandy")
      end
    end
  end
end
