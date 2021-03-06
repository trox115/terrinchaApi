require 'rails_helper'

RSpec.describe Encomenda, type: :model do
  context 'validation tests' do
    it 'ensures that cliente id is present' do
      cliente = Cliente.new(name: 'Antonio', email: 'antonio@email.com', phone: '123456789').save
      produto = Produto.new(id: 1, nome: 'teste', descricao: '2003 ',
                            preco: '5', ano: '5').save
      encomenda = Encomenda.new(produto_id: 1, quantidade: 5).save
      expect(encomenda).to eq(false)
    end
    it 'ensures that produto_id is present' do
      cliente = Cliente.new(name: 'Antonio', email: 'antonio@email.com', phone: '123456789').save
      produto = Produto.new(id: 1, nome: 'teste', descricao: '2003 ',
                            preco: '5', ano: '5').save
      encomenda = Encomenda.new(cliente_id: 1, quantidade: 5).save
      expect(encomenda).to eq(false)
    end
    it 'ensures that quantidade is present' do
      cliente = Cliente.new(name: 'Antonio', email: 'antonio@email.com', phone: '123456789').save
      produto = Produto.new(id: 1, nome: 'teste', descricao: '2003 ',
                            preco: '5', ano: '5').save
      encomenda = Encomenda.new(cliente_id: 1, produto_id: 1).save
      expect(encomenda).to eq(false)
    end
    it 'ensures that encomenda can be saved' do
      cliente = Cliente.new(id: 1, name: 'Antonio', email: 'antonio@email.com', phone: '123456789').save
      produto = Produto.new(id: 1, nome: 'teste', descricao: '2003 ',
                            preco: '5', ano: '5').save
      encomenda = Encomenda.new(cliente_id: 1, produto_id: 1, quantidade: 5).save
      expect(cliente).to eq(true)
      expect(encomenda).to eq(true)
    end
  end
end
