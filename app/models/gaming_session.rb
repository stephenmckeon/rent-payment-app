class GamingSession < ApplicationRecord
  belongs_to :gamer
  belongs_to :video_game
end
