module DashboardHelper
   def graph4
     @goals = Casa.all
    end

    def clienteId(id)
      @cli = Cliente.find(id)
    end
    def prodId(id)
      @prod = Produto.find(id)
    end
  end

