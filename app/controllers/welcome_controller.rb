require 'signet/oauth_2/client'


class WelcomeController < ApplicationController
	@@client = Signet::OAuth2::Client.new(
	  :authorization_uri => 'https://api.freeagent.com/v2/approve_app',
	  :token_credential_uri =>  'https://api.freeagent.com/v2/token_endpoint',
	  :client_id => 't9FqWsfrKzidfDVF4zJpZw',
	  :client_secret => 'jALm_RjSNyPxszQrJS7ZDA',
	  :scope => 'abc',
	  :redirect_uri => 'http://localhost:3000/freeagent_oauth'
	)
  def index
  	@client = @@client
  end

  def freeagent_oauth
  	@@client.code = params['code']
  	@@client.fetch_access_token!
  	redirect_to '/list'
  end

  def list
  	# render 'list'
  	@client = @@client
  end
end
