require 'cgi'
require 'uri'
require 'oauth2'
require 'omniauth'
require 'timeout'
require 'securerandom'
require 'omniauth-oauth2'

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
        
      # uid { raw_info['data']['xid'].to_s }
 # 
 #      info do
 #        {
 #          'id' => raw_info['data']['xid'],
 #          'photo' => raw_info['data']['image'],
 #          'first_name' => raw_info['data']['first'],
 #          'last_name' => raw_info['data']['last'],
 #        }
 #      end      # 
      # 
      # def user_data
      #   access_token.options[:mode] = :query
      #   user_data ||= access_token.get('/nudge/api/users/@me').parsed
      # end
      # 
      # def raw_info
      #   @raw_info ||= MultiJson.load(access_token.get('/nudge/api/users/@me').body)
      # rescue ::Errno::ETIMEDOUT
      #   raise ::Timeout::Error
      # end

    end
  end
end


OmniAuth.config.add_camelization 'nikeplus', 'Nikeplus'
