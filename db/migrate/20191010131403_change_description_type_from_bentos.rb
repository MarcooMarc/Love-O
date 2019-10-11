class ChangeDescriptionTypeFromBentos < ActiveRecord::Migration[5.2]
  def change
  	change_column :bentos, :description, :text
  end
end
