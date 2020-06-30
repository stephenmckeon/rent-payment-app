FactoryBot.define do
  factory :gaming_session do
    start_time { "2020-06-30 12:00:00" }
    end_time { "2020-06-30 01:00:00" }
    rating { 9 }
    gamer { build(:gamer) }
    video_game { build(:video_game) }
  end
end