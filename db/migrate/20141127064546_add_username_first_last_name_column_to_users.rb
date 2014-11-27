class AddUsernameFirstLastNameColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :lastname, :string
    add_column :users, :firstname, :string

    # ajouter l ’ index de type unique sur username 
    add_index :users, :username , :unique => true
  end
end
