class CreateAteliers < ActiveRecord::Migration[5.2]
  def change
    create_table :ateliers do |t|
      t.string :titre
      t.string :date
	  t.string :lieu
	  t.integer :prix
	  t.integer :places
	  t.string :horaires
	  t.string :description
      t.timestamps
    end
  end
end
