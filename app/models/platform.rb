class Platform < ApplicationRecord
  has_many :video_games
  has_many :gamers, through: :video_games
end
