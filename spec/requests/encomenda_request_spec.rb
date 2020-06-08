require 'rails_helper'

RSpec.describe 'Encomendas', type: :request do
  describe 'GET /create' do
    it 'returns http success' do
      get '/encomenda/create'
      expect(response).to have_http_status(:success)
    end
  end
end
