class CreatePartners < ActiveRecord::Migration
  def self.up
    create_table :partners do |t|
      t.string :name
      t.string :address_one
      t.string :address_two
      t.string :type
      t.text :description
      t.string :language
      t.string :living_accomodation
      t.text :living_utilities
      t.float :distance_to_duty_station
      t.float :cost_of_living
      t.string :transportation
      t.float :cost_of_transportation
      t.float :visa_fee
      t.text :visa_requirements
      t.text :medivac_details

      t.timestamps
    end
  end

  def self.down
    drop_table :partners
  end
end
