FactoryBot.define do
  factory :video_game do
    name { "Overwatch" }
    release_date { "2016-05-24" }
    genre { "FPS" }
    platform { build(:platform) }
  end
end