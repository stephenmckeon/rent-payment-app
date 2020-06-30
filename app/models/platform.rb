class Platform < ApplicationRecord
  has_many :video_games
  has_many :gamers, through: :video_games

  validates :name, :developer, :release_date, presence: true
  validates_uniqueness_of :name

  def readable_release_date
    release_date.to_date.strftime("%B %d, %Y")
  end
end
