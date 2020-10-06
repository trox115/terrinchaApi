module PalmocoHelper
  def nomeCliente(id)
    cliente = Cliente.find(id)
    cliente.name
  end

  def nomeCasa(id)
  casa = Casa.find(id)
  casa.nome
  end
end
