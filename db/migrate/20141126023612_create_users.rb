class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name

      t.timestamps
    end

    # ajouter l ’ index de type unique sur username 
    add_index :users, :username , :unique => true
  end
end
