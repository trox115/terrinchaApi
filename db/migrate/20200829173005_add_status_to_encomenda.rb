class AddStatusToEncomenda < ActiveRecord::Migration[6.0]
  def change
     add_column :encomendas, :status, :string, :default =>'nao tratada' 
  end
end
