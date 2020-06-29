class VideoGame < ApplicationRecord
  has_many :gaming_sessions
  has_many :gamers, through: :gaming_sessions
  belongs_to :platform

  def readable_release_date
    release_date.to_date.strftime("%B %d, %Y")
  end
end
