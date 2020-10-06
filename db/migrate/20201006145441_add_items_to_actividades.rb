class AddItemsToActividades < ActiveRecord::Migration[6.0]
  def change
    add_column :atividades, :itens, :text, array:true, default:[]
  end
end
