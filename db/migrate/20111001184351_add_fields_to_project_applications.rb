class AddFieldsToProjectApplications < ActiveRecord::Migration
  def change
    add_column :project_applications, :complete, :boolean
    add_column :project_applications, :stipend, :float
  end
end
