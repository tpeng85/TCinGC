class AddFieldsToStudentApplications < ActiveRecord::Migration
  def change
    add_column :student_applications, :complete, :boolean
  end
end
