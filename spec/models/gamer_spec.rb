require 'rails_helper'

RSpec.describe Gamer, type: :model do
  it "is valid" do
    expect(build(:gamer)).to be_valid
  end
end
