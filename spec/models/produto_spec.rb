require 'rails_helper'

RSpec.describe Produto, type: :model do
  context 'validation tests' do
    it 'ensures nome presence' do
      produto = Produto.new(descricao:'teste', 
                            ano:'2003', 
                            preco:'5').save
      expect(produto).to eq(false)
    end

    it 'ensures descricao presence' do
      produto = Produto.new(nome:'teste', 
                            ano:'2003', 
                            preco:'5').save
      expect(produto).to eq(false)
    end

    it 'ensures ano presence' do
      produto = Produto.new(nome:'teste',
                            descricao:'2003', 
                            preco:'5').save
      expect(produto).to eq(false)
    end

    it 'ensures price presence' do
      produto = Produto.new(nome:'teste',
                            descricao:'2003',
                            ano:'5').save
      expect(produto).to eq(false)
    end
    it 'ensures product its not save successfuly presence' do
      produto = Produto.new(nome:'teste',
                            descricao:'2003 and here will have too much chars', 
                            preco:'5',
                            ano:'5').save
      expect(produto).to eq(false)
    end
    it 'ensures product its save successfuly presence' do
      produto = Produto.new(nome:'teste',
                            descricao:'2003 ', 
                            preco:'5',
                            ano:'5').save
      expect(produto).to eq(true)
    end
  end
end
