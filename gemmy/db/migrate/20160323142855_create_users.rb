class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.integer :date_of_birth
      t.text :description
      t.boolean :remember_me
      t.integer :age
      t.string :email
      t.integer :country_id

      t.timestamps null: false
    end
  end
end
