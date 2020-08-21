class ApplicationController < ActionController::Base
  before_action :basic_auth

  # def after_sign_up_path_for(resource)
  #   new_item_path(resource)
  # end


  private

  

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == 'jun' && password == '2222'
    end
  end
end
