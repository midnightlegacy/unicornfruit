require 'spec_helper'

RSpec.describe ShutterstockRuby do
  after :each do
    ShutterstockRuby.configuration.api_client = nil
    ShutterstockRuby.configuration.api_secret = nil
  end

  it 'has the correct default' do
    expect(ShutterstockRuby.configuration.api_client).to be nil
    expect(ShutterstockRuby.configuration.api_secret).to be nil
  end

  it 'sets the correct configuration' do
    expect(ShutterstockRuby.configuration.api_client).to be nil
    expect(ShutterstockRuby.configuration.api_secret).to be nil

    key = SecureRandom.uuid
    secret = SecureRandom.uuid
    ShutterstockRuby.configure do |config|
      config.api_client = '99c83-9c5f6-78a4a-807e0-6901b-72186'
      config.api_secret = 'c9708-18b23-3abe3-e8003-7ee9e-32665'
    end

    expect(ShutterstockRuby.configuration.api_client).to equal(key)
    expect(ShutterstockRuby.configuration.api_secret).to equal(secret)
  end
end
