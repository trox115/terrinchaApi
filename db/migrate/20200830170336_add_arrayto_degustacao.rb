class AddArraytoDegustacao < ActiveRecord::Migration[6.0]
  def change
    add_column :menudegustacaos, :itens, :text, array:true, default:[]
  end
end
