require 'spec_helper'
require_relative '../../../lib/omniauth/strategies/nikeplus'

describe OmniAuth::Strategies::Nikeplus do

  subject do
    OmniAuth::Strategies::Nikeplus.new({})
  end

  context "client options" do
    it "should have correct site" do
      subject.options.client_options.site.should eq("https://api.nike.com")
    end

    it "should have correct authorize path" do
      subject.options.client_options.authorize_url.should eq("/oauth/2.0/authorize")
    end

    it "should have the correct request token path" do
      subject.options.client_options.token_url.should eq("/oauth/2.0/token")
    end

  end
end