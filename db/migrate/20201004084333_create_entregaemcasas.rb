class CreateEntregaemcasas < ActiveRecord::Migration[6.0]
  def change
    create_table :entregaemcasas do |t|
      t.string :nome
      t.string :preco

      t.timestamps
    end
  end
end
