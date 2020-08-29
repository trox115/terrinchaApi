class ProductsController < ApplicationController
  def index
    @Produtos = Produto.all
  end

  def new
    @Produto = Produto.new
  end

  def create
    @produto = Produto.new(produto_params)

    respond_to do |format|
      if @produto.save
        format.html { redirect_to @produto, notice: 'produto criado com sucesso.' }
        format.json { render :show, status: :created, location: @produto }
      else
        format.html { render :new }
        format.json { render json: @Produto.errors, status: :unprocessable_entity }
      end
    end
  end

private 

def produto_params
  params.require(:produto).permit(:nome, :descricao, :preco, :ano, :imagem)
end

end
