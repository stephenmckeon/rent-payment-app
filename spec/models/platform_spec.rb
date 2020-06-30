require "rails_helper"

describe Platform, type: :model do
  it "is valid" do
    expect(build(:platform)).to be_valid
  end
end