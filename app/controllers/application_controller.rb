class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :require_login

private

  def require_login
    redirect_to "/signin" unless session.include? :gamer_id
  end
end
