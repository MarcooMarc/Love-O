class ChangeDescriptionTypeFromParcours < ActiveRecord::Migration[5.2]
  def change
  	change_column :parcours, :description, :text
  end
end
