class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :office_number
      t.string :mobile_number
      t.string :skype

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
