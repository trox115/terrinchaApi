class Encomenda < ApplicationRecord
  belongs_to :cliente
  belongs_to :produto
  validates :quantidade, presence: true
end
