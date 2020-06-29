class ApplicationController < ActionController::Base
  def index
    return unless session[:gamer_id]

    @gamer = Gamer.find(session[:gamer_id])
  end
end
