The Shutterstock JPG Downloader
===================

```rb
gem "shutterstock-ruby"
```

## Usage

You need a valid client_id/secret combo to use the Gem, you can get it by signing up [here](http://developers.shutterstock.com)(Free)

*Raises Exception on missing credentials*

### Configuration
You can use an initializer for example if you're on Rails.
```rb
# initializers/shutterstock.rb
ShutterstockRuby.configure do |config|
  config.api_client = ENV['SHUTTERSTOCK_CLIENT']
  config.api_secret = ENV['SHUTTERSTOCK_SECRET']
end
```

### Search for Vectors

```rb
result = ShutterstockRuby::Images.search('Cat') # Returns a hash of the parsed JSON result.
```
```

## Disclaimer

This is completely unofficial and is not related to Shutterstock in any way.

