require 'rails_helper'

RSpec.describe "Unities", type: :request do
  describe "GET /unities" do
    it "works! (now write some real specs)" do
      get unities_path
      expect(response).to have_http_status(200)
    end
  end
end
