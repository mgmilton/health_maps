source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.5'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'active_model_serializers'
gem 'figaro'
gem 'devise'
gem 'bcrypt'
gem 'faraday'
gem 'bootstrap-sass', '~> 3.3.7'
gem 'jquery-rails'
gem "omniauth-twitter"

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'capybara', '~> 2.13'
  gem 'launchy'
  gem 'pry'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
end

group :test do
  gem 'simplecov'
  gem 'twilio_mock', '~> 0.4.0'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
