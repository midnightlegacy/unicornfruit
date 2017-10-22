require 'json'
require 'rest_client'
require 'shutterstock-ruby/connections'
require 'shutterstock-ruby/images'
#require 'shutterstock-ruby/videos'

# Top level name space for the entire Gem.
module ShutterstockRuby
  API_BASE = 'api.shutterstock.com/v2'

  def self.configuration
    @configuration ||=  Configuration.new
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration) if block_given?
  end

  # Main configuration class.
  class Configuration
    attr_accessor :api_client
    attr_accessor :api_secret

    def initialize
      @api_client = '99c83-9c5f6-78a4a-807e0-6901b-72186'
      @api_secret = 'c9708-18b23-3abe3-e8003-7ee9e-32665'
    end
  end
end
