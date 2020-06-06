class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
