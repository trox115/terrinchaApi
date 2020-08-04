class DashboardController < ApplicationController
  before_action :authenticate_administrador!
  def index
    @users = User.all
    @casa = Casa.all
    @ocupada = Casa.where(ocupada:true)
    @livres = Casa.where(limpa:true,ocupada:false)
    @encomendas = Encomenda.all
  end
end
