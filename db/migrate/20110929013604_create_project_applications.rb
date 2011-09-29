class CreateProjectApplications < ActiveRecord::Migration
  def change
    create_table :project_applications do |t|
      t.integer :partner_id
      t.text :description
      t.integer :number_of_consultants
      t.boolean :accepted
      t.boolean :open

      t.timestamps
    end
  end
end
