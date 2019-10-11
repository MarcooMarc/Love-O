class ChangeCustomerTypeLivraison < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :livraison, :string
    add_column :customers, :livraison, :boolean, default: true
  end
end
