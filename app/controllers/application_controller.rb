class ApplicationController < ActionController::Base
  before_action :require_login

private

  def require_login
    redirect_to "/signin" unless session.include? :gamer_id
  end
end
