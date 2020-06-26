class VideoGame < ApplicationRecord
  has_many :gaming_sessions
  has_many :gamers, through: :gaming_sessions
  belongs_to :platform
end
