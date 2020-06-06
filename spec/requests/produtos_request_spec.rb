require 'rails_helper'

RSpec.describe 'Produtos', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/produtos/index'
      expect(response).to have_http_status(:success)
    end
  end
end
