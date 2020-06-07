class CasasController < ApplicationController
  def index
    @casas = Casa.all
    render json: @casas
  end
end
