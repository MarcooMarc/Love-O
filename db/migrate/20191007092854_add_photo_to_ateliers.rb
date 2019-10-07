class AddPhotoToAteliers < ActiveRecord::Migration[5.2]
  def change
    add_column :ateliers, :photo, :string
  end
end
