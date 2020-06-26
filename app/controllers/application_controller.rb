class ApplicationController < ActionController::Base
  def index
    if session[:gamer_id]
      @gamer = Gamer.find(session[:gamer_id])
    end
  end
end
