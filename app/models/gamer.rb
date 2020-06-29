class Gamer < ApplicationRecord
  has_many :gaming_sessions
  has_many :video_games, through: :gaming_sessions
  has_many :platforms, through: :video_games
  has_secure_password

  validates :name, :gamertag, :password, presence: true
  validates_uniqueness_of :gamertag

  PASSWORD_REQUIREMENTS = /\A
    (?=.{8}) # At least 8 characters long
    (?=.*\d) # Contrains at least one number
    (?=.*[a-z]) # Contains at least one lowercase letter
    (?=.*[A-Z]) # Contains at least one uppercase letter
    (?=.*[[:^alnum:]]) # Contains at least one symbol
  /x.freeze

  validates :password, format: PASSWORD_REQUIREMENTS
end
