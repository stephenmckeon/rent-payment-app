module GamersHelper
  def member_since
    @gamer.created_at.to_date.strftime("%B %d, %Y")
  end
end
