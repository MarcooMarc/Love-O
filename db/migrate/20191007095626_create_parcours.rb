class CreateParcours < ActiveRecord::Migration[5.2]
  def change
    create_table :parcours do |t|
      t.string :description
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.string :photo4
      t.string :photo5
      t.string :photo6

      t.timestamps
    end
  end
end
