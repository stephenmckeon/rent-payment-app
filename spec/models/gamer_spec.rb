require "rails_helper"

describe Gamer, type: :model do
  it "is valid" do
    expect(build(:gamer)).to be_valid
  end

  it "password is invalid without at least 8 characters" do
    expect(build(:gamer, password: "Pass12!")).to be_invalid
  end

  it "password is invalid without an uppercase letter" do
    expect(build(:gamer, password: "testpassword123!")).to be_invalid
  end

  it "password is invalid without a lowercase letter" do
    expect(build(:gamer, password: "TESTPASSWORD123!")).to be_invalid
  end

  it "password is invalid without a number" do
    expect(build(:gamer, password: "TestPassword!")).to be_invalid
  end

  it "password is invalid without a special character" do
    expect(build(:gamer, password: "TestPassword123")).to be_invalid
  end
end
