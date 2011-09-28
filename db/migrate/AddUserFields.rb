class AddUserFields < ActiveRecord::Migration
  def self.up
    add_column :users, :role, :short, :default => 0
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
  end

  def self.down
    remove_column :users, :role
    remove_column :users, :first_name
    remove_column :users, :last_name
  end
end