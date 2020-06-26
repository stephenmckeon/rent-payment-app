class Gamer < ApplicationRecord
  has_many :gaming_sessions
  has_many :video_games, through: :gaming_sessions
  has_many :platforms, through: :video_games
  has_secure_password
end
