class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :phonenumber
      t.string :livraison
      t.string :lieu


      t.timestamps
    end
  end
end
