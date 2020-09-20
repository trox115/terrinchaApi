class CreateMenudegustacaos < ActiveRecord::Migration[6.0]
  def change
    create_table :menudegustacaos do |t|
      t.string :nome
      t.string :preco

      t.timestamps
    end
  end
end
