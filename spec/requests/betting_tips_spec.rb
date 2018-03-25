require 'rails_helper'

RSpec.describe "BettingTips", type: :request do
  describe "GET /betting_tips" do
    it "works! (now write some real specs)" do
      get betting_tips_path
      expect(response).to have_http_status(200)
    end
  end
end
