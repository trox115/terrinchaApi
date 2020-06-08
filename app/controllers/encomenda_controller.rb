class EncomendaController < ApplicationController
  def create
    encomenda = Encomenda.create!(encomenda_params) 

  if encomenda
    render json:{
      status: :ok,
    }
  else
    render json:{
      status: 500
    }
  end
  end

  private

  def encomenda_params
    params.require(:encomenda).permit(:cliente_id, :produto_id, :quantidade)
  end
end
