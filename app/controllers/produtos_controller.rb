class ProdutosController < ApplicationController
  def index
    @produtos = Produto.all
    render json: @produtos
  end
end
