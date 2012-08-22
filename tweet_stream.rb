require File.expand_path('../config/environment', __FILE__)
require File.expand_path('../config/preinitializer', __FILE__)
require 'tweetstream'

TweetStream.configure do |config|
  config.consumer_key       = AppConfig.twitter.consumer_key
  config.consumer_secret    = AppConfig.twitter.consumer_secret
  config.oauth_token        = AppConfig.twitter.oauth_token
  config.oauth_token_secret = AppConfig.twitter.oauth_token_secret
  config.auth_method        = :oauth
end

TweetStream::Client.new.track('music', 'facebook') do |status|
  if status.geo.present?
    event = EventWorld::Event.new({ longitude: status.geo.coordinates[1], latitude: status.geo.coordinates[0] })
    event.publish
    puts "#{status.from_user}: #{status.geo.coordinates}"
  end
end
