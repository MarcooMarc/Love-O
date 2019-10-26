class CreationParticipantsForAteliers < ActiveRecord::Migration[5.2]
  def change
  	create_table :participants do |t|
  	t.string "name"
    t.string "surname"
    t.string "email"
    t.string "phonenumber"
    t.string "lieu"
    t.timestamps
  end
end
end
