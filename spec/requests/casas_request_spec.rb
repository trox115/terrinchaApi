require 'rails_helper'

RSpec.describe "Casas", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/casas/index"
      expect(response).to have_http_status(:success)
    end
  end

end
