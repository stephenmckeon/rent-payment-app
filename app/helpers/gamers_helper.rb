module GamersHelper
  def member_since
    @gamer.created_at.to_date.strftime("%B %d, %Y")
  end

  def delete_if_signed_in
    return unless session[:gamer_id] == @gamer.id

    link_to "delete", gaming_session_path(session), method: :delete
  end

  def delete_gamer_if_signed_in
    return unless session[:gamer_id] == @gamer.id

    link_to "Delete Profile", gamer_path(@gamer), method: :delete
  end
end
