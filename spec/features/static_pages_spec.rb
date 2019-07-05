require 'rails_helper'

RSpec.feature "StaticPages", type: :feature do
  describe "タイトルの表示内容" do
    describe "homeページ" do
      it do
        visit root_path
        expect(page).to have_title full_title('')
      end
    end

    describe "helpページ" do
      it do
        visit help_path
        expect(page).to have_title full_title('Help')
      end
    end

    describe "aboutページ" do
      it do
        visit about_path
        expect(page).to have_title full_title('About')
      end
    end

    describe "contactページ" do
      it do
        visit contact_path
        expect(page).to have_title full_title('Contact')
      end
    end
  end

  describe "リンクが表示されている" do
    before do
      visit root_path
    end

    it "logo" do
      expect(page).to have_link "sample app"
    end

    it "home" do
      expect(page).to have_link "Home"
    end

    it "help" do
      expect(page).to have_link "Help"
    end

    it "about" do
      expect(page).to have_link "About"
    end

    it "contact" do
      expect(page).to have_link "Contact"
    end
  end
end
