class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :basic_authentication

  def basic_authentication
    authenticate_or_request_with_http_basic do |user, pass|
      user == ENV['PASS'] && pass == ENV['PASS']
    end
  end
end
