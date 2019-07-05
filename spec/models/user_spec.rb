require 'rails_helper'

RSpec.describe Users, type: :model do
  it "有効か" do
    expect(FactoryBot.build(:user)).to be_valid
  end
end
