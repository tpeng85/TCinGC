class AddFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :mobile_num, :string
    add_column :users, :office_num, :string
    add_column :users, :skype, :string
    add_column :users, :role, :string
  end
end
