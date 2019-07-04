require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe "#home" do
    it do
      get :home
      expect(response).to be_success
    end
  end

  describe "#help" do
    it do
      get :help
      expect(response).to be_success
    end
  end

  describe "#about" do
    it do
      get :about
      expect(response).to be_success
    end
  end

  describe "#contact" do
    it do
      get :contact
      expect(response).to be_success
    end
  end
end
