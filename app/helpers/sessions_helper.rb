module SessionsHelper
  def welcome
    if session[:gamer_id].blank?
      render "welcome_gamers"
    else
      render "welcome_gamer"
    end
  end
end
