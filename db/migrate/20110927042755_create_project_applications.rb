class CreateProjectApplications < ActiveRecord::Migration
  def self.up
    create_table :project_applications do |t|
      t.text :description
      t.integer :number_of_consultants
      t.boolean :accepted

      t.timestamps
    end
  end

  def self.down
    drop_table :project_applications
  end
end
