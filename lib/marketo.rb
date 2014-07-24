require 'rest_client'
require 'json'

class Marketo

  def self.get_authentication_token identity_service_url:nil,
    custom_service_client_id:nil, custom_service_client_secret:nil

    JSON.parse(
      RestClient.get "#{identity_service_url}/oauth/token?grant_type=client_credentials" +
        "&client_id=#{custom_service_client_id}" +
        "&client_secret=#{custom_service_client_secret}")['access_token']
  end

end