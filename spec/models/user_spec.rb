require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#forget" do
    # let(:user) { User.new(name: 'taro', email: 'taro@example.com', password: "testtest", remember_digest: 'remember_digest_token') }
    # let(:user) { FactoryBot.build(:user, remember_digest: 'remember_digest_token') }

    # let(:user) { User.create(name: 'taro', email: 'taro@example.com', password: "testtest", remember_digest: 'remember_digest_token') }
    let(:user) { FactoryBot.create(:user, remember_digest: 'remember_digest_token') }

    it do
      expect(user.forget).to be_truthy
      expect(user.remember_digest).to be_nil
    end
  end

  describe "#feed" do
    subject { user.feed }

    let(:user) { FactoryBot.create(:user) }
    let(:other_user) { FactoryBot.create(:user) }
    let!(:other_micropost) { FactoryBot.create(:micropost, user: other_user) }

    context 'micropostがあるとき' do
      let(:micropost) { FactoryBot.create(:micropost, user: user) }

      it { is_expected.to eq [micropost] }
    end

    context 'micropostがないとき' do
      it { is_expected.to eq [] }
    end
  end

  describe ".new_token" do
    it do
      expect(User.new_token).to match /\w{22}/
    end
  end

  describe "#valid?" do
    context 'valid' do
      let(:user) { FactoryBot.build(:user) }
      it do
        expect(user).to be_valid
      end
    end

    context 'without name' do
      let(:user) { FactoryBot.build(:user, name: '') }
      it do
        expect(user).to be_invalid
      end
    end

    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(50) }

  end

  describe "#associate" do
    it { should have_many(:microposts).dependent(:destroy) }
  end
end
