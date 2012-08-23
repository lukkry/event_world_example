EventWorld example
-----------------

It's an example Rails app using the event_world gem. Please follow this instructions: [event_world](http://github.com/lukkry/event_world)

Usage
-----
Update config file with Twitter account credentials.

    $ mv config/config.yml sample config/config.yml
    
```ruby
development:
  twitter:
    consumer_key: 'secret'
    consumer_secret: 'secret'
    oauth_token: 'secret'
    oauth_token_secret: 'secret'
```
    
Run tweet_stream.rb file in order to simulate external service which provides geolocalized events.

    $ ruby tweet_stream.rb