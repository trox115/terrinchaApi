class CreateCasas < ActiveRecord::Migration[6.0]
  def change
    create_table :casas do |t|
      t.string :nome
      t.boolean :limpa, default: true
      t.boolean :ocupada, default: false

      t.timestamps
    end
  end
end
