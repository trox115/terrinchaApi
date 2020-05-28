class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true, email: true
  validates :name, :password_digest, presence: true
  validates :password, length: { minimum: 8 }, on: :create
end
