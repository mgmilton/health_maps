FactoryBot.define do
  factory :user do
    email "map@maps.com"
    name "Mister Map"
    password_digest "MyString"
    location "Portland, OR"
  end
end
