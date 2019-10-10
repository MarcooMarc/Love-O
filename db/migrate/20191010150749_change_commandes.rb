class ChangeCommandes < ActiveRecord::Migration[5.2]
  def change
  	add_reference :commandes, :user
  	add_column :commandes, :quantités, :integer, default: 1, null: false
  	remove_column :commandes, :photo
  	remove_column :customers, :quantités
  end
end
