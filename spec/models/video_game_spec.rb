require "rails_helper"

describe VideoGame, type: :model do
  it "is valid" do
    expect(build(:video_game)).to be_valid
  end
end