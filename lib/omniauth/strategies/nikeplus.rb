require 'cgi'
require 'uri'
require 'oauth2'
require 'omniauth'
require 'timeout'
require 'securerandom'
require 'omniauth-oauth2'
require 'multi_json'

module OmniAuth
  module Strategies
    class Nikeplus < OmniAuth::Strategies::OAuth2

      option :client_options, {
          :site => 'https://api.nike.com',
          :authorize_url => '/oauth/2.0/authorize',
          :token_url => '/oauth/2.0/token'
        }
        
        option :authorize_params, {
          :response_type => 'code'
        }

      uid{ raw_info['user_id'].gsub("\"","")}

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info = access_token.to_hash
      end
     

    end
  end
end


OmniAuth.config.add_camelization 'nikeplus', 'Nikeplus'
