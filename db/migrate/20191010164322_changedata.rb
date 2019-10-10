class Changedata < ActiveRecord::Migration[5.2]
  def change
  	add_reference :commandes, :customer
  end
end
