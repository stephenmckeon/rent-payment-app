class VideoGame < ApplicationRecord
  has_many :gaming_sessions
  has_many :gamers, through: :gaming_sessions
  belongs_to :platform
  validates :name, :release_date, :genre, presence: true
  validates :name, uniqueness: { scope: :platform, case_sensitive: false }
  scope :new_games, -> { where("release_date >= '2020-01-01'") }

  def message
    "This game has already been added to this platform."
  end

  def readable_release_date
    release_date.to_date.strftime("%B %d, %Y")
  end
end
