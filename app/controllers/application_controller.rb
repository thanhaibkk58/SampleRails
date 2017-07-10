class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private

  def logged_in_user
    return true if logged_in?
    store_location
    flash[:danger] = t ".loggin_require"
    redirect_to login_url
  end
end
