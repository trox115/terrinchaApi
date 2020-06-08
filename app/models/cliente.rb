class Cliente < ApplicationRecord
  has_secure_password
  validates :email, presence: true
  validates :name, presence: true
  validates :phone, length: { minimum: 9 }
  has_many :encomenda
end
