class AddFieldsToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :rolable_id, :integer
    add_column :users, :rolable_type, :string
  end

  def self.down
    remove_column :users, :rolable_type
    remove_column :users, :rolable_id
  end
end
