class DashboardController < ApplicationController
  before_action :authenticate_administrador!
  def index
    @users = User.all
    @casa = Casa.all
    @ocupada = Casa.where(ocupada:true)
    @suja = Casa.where(limpa:false)
    @livres = Casa.where(limpa:true,ocupada:false)
    @encomendas = Encomenda.all
  end
end
