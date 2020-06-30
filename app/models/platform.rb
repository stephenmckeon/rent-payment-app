class Platform < ApplicationRecord
  has_many :video_games
  has_many :gamers, through: :video_games

  def readable_release_date
    release_date.to_date.strftime("%B %d, %Y")
  end
end
