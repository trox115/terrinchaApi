require 'rails_helper'

RSpec.describe "Palmocos", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/palmoco/create"
      expect(response).to have_http_status(:success)
    end
  end

end
