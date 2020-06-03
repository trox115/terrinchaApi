class Produto < ApplicationRecord
  validates :nome, presence: true
  validates :descricao, presence: true, length: { maximum: 25 }
  validates :preco, presence: true
  validates :ano, presence: true
end
