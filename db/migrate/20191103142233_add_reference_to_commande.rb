class AddReferenceToCommande < ActiveRecord::Migration[5.2]
  def change
  	  	remove_reference :commandes, :user
  	  	remove_reference :commandes, :surname
 
  end
end
