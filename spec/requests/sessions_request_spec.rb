require 'rails_helper'

RSpec.describe "Sessions", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/sessions/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /logged_in" do
    it "returns http success" do
      get "/sessions/logged_in"
      expect(response).to have_http_status(:success)
    end
  end

end
