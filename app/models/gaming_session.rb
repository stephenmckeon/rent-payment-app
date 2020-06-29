class GamingSession < ApplicationRecord
  belongs_to :gamer
  belongs_to :video_game

  def readable_start_time
    start_time.to_date.strftime("%B %d, %Y")
  end

  def session_length
    length = (end_time - start_time) / 60 / 60
    length.round(1)
  end
end
