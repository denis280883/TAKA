class RemoveNameColumnToUsers < ActiveRecord::Migration
  def self.up
    remove_column :users, :name, :string
  end
end
