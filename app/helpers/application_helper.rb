module ApplicationHelper
  def header
    if session[:gamer_id].blank?
      render "header_logged_out"
    else
      render "header_logged_in"
    end
  end
end
