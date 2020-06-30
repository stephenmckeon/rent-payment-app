require "rails_helper"

describe GamingSession, type: :model do
  it "is valid" do
    expect(build(:gaming_session)).to be_valid
  end
end