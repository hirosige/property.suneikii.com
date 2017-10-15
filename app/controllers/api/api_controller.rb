class Api::ApiController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :api_authenticate

  protected
    def api_authenticate
      authenticate_or_request_with_http_token do |token, options|
        token == 'FOO'
      end
    end
end
