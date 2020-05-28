class CreateProdutos < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :descricao
      t.string :ano
      t.string :preco

      t.timestamps
    end
  end
end
