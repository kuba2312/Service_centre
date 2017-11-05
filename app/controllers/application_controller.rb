class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def destroy
    log_out
    redirect_to root_url
  end
end
