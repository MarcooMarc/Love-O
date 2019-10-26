class CreateWorkshop < ActiveRecord::Migration[5.2]
  def change
    create_table :workshops do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer :participant_id
    t.timestamps
    end
  end
end

    