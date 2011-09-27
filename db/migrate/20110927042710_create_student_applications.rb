class CreateStudentApplications < ActiveRecord::Migration
  def self.up
    create_table :student_applications do |t|
      t.binary :resume
      t.binary :transcript
      t.binary :statement
      t.boolean :accepted

      t.timestamps
    end
  end

  def self.down
    drop_table :student_applications
  end
end
