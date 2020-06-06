class Cliente < ApplicationRecord
  validates :email, presence: true
  validates :name, presence: true
  validates :phone, length: { minimum: 9 }
  has_many :encomenda
end
