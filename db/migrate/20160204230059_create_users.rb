class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :city
      t.string :state
      t.string :email
      t.string :username
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
