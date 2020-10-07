class AddIngredientesToEntregaEmCasa < ActiveRecord::Migration[6.0]
  def change
    add_column :entregaemcasas, :ingredientes, :text, array:true, default:[]
  end
end
