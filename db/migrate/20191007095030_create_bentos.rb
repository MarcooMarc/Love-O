class CreateBentos < ActiveRecord::Migration[5.2]
  def change
    create_table :bentos do |t|
      t.string :titre
      t.string :description
      t.string :string
      t.string :date
      t.string :datetime
      t.integer :avis
      t.string :commentaire
      t.string :photo
      t.timestamps
    end
  end
end
