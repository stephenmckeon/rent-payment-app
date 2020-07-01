module ApplicationHelper
  def header
    if session[:gamer_id].blank?
      render "header_logged_out"
    else
      @gamer = Gamer.find(session[:gamer_id])
      render "header_logged_in"
    end
  end
end
