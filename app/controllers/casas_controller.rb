class CasasController < ApplicationController
  def index
    @casas = Casa.all
    render json: @casas
  end

  def update
    casa = Casa.find(params[:id])
    casa.update(ocupada: true)
  end

  def suja
    casa = Casa.find(params[:id])
    casa.update(ocupada: false, limpa: false)
  end

def casaOcupada
  @casas = Casa.where(ocupada:false)
  render json: @casas
end
end
