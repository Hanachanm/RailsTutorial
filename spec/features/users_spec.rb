require 'rails_helper'

RSpec.feature "Users", type: :feature do
  describe "signupページ" do
    before do
      visit signup_path
    end

    it "正しくアクセスできる" do
      expect(page).to have_content "Sign up"
    end

    it "タイトルが正しく表示されている" do
      expect(page).to have_title full_title("Sign up")
    end
  end
end
