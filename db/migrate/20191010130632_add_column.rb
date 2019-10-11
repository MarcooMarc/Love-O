class AddColumn < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :quantités, :integer, default: 1, null: false
  end
end
