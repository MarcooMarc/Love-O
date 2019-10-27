class CreateContact < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
    	t.string :name
    	t.string :surmane
    	t.string :email
    	t.text :message
    end
  end
end
