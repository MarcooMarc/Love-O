class AddColumnQuantites < ActiveRecord::Migration[5.2]
  def change
  	add_column :customers, :quantités, :integer 
  end
end
