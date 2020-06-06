class CreateEncomendas < ActiveRecord::Migration[6.0]
  def change
    create_table :encomendas do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :produto, null: false, foreign_key: true
      t.integer :quantidade

      t.timestamps
    end
  end
end
