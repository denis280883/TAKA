class AddUsernameColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string

    # ajouter l ’ index de type unique sur username 
    add_index :users, :username , :unique => true
  end
end
