require 'rails_helper'

RSpec.describe "EarthmovesPastDays", type: :request do
  describe "GET /earthmoves_past_days" do
    it "works! (now write some real specs)" do
      get earthmoves_past_days_path
      expect(response).to have_http_status(200)
    end
  end
end
