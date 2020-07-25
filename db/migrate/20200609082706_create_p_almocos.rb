class CreatePAlmocos < ActiveRecord::Migration[6.0]
  def change
    create_table :p_almocos do |t|
      t.datetime :horas
      t.references :cliente, null: false, foreign_key: true
      t.references :casa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
