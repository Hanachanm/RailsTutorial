require 'rails_helper'

RSpec.feature "StaticPages", type: :feature do
  describe "タイトルの表示内容" do
    describe "homeページ" do
      it do
        visit root_path
        expect(page).to have_title "Ruby on Rails Tutorial Sample App"
      end
    end

    describe "helpページ" do
      it do
        visit help_path
        expect(page).to have_title "Help | Ruby on Rails Tutorial Sample App"
      end
    end

    describe "aboutページ" do
      it do
        visit about_path
        expect(page).to have_title "About | Ruby on Rails Tutorial Sample App"
      end
    end

    describe "contactページ" do
      it do
        visit contact_path
        expect(page).to have_title "Contact | Ruby on Rails Tutorial Sample App"
      end
    end
  end
end
