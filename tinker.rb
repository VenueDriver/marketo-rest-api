require_relative 'lib/marketo'

token = Marketo::get_authentication_token(
  identity_service_url:'YOUR IDENTITY SERVICE URL',
  custom_service_client_id:'YOUR CLIENT ID',
  custom_service_client_secret:'YOUR SECRET')