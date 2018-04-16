Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_CONSUMER_API_KEY'], ENV['TWITTER_CONSUMER_SECRET_API_SECRET']
  provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET'], scope: 'email,profile'
end
