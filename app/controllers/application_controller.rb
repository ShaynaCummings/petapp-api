class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods

  # before_filter :authenticate

  protected

  def authenticate
    authenticate_or_request_with_http_token do |token, options|
      User.find_by(token: token)
    end
  end

end
