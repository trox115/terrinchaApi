class AddPasswordToClients < ActiveRecord::Migration[6.0]
  def change
    add_column :clientes, :password_digest, :string
  end
end
