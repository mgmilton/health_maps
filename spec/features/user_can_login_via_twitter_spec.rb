require "rails_helper"

RSpec.feature "user logs in" do
  scenario "using twitter oauth" do
    VCR.use_cassette("user_logs_in_with_twitter", :record => :new_episodes) do
      stub_omniauth
      visit "/"

      expect(page).to have_link("Twitter")

      click_link "Twitter"
      expect(page).to have_content("Locations")
    end
  end
end

def stub_omniauth
  OmniAuth.config.test_mode = true

  OmniAuth.config.mock_auth[:twitter] = OmniAuth::AuthHash.new({
    provider: 'twitter',
    extra: {
      raw_info: {
        uid: "1234",
        login: "Hal",
        name: "DFW",
        screename: "Eschaton"
      }
    },
    credentials: {
      token: "pizza",
      secret: "secretpizza"
    }
    })
end
