class CreateAtividades < ActiveRecord::Migration[6.0]
  def change
    create_table :atividades do |t|
      t.string :nome

      t.timestamps
    end
  end
end
