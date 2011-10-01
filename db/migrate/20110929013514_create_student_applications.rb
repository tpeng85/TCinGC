class CreateStudentApplications < ActiveRecord::Migration
  def change
    create_table :student_applications do |t|
      t.integer :user_id
      t.binary :resume
      t.binary :transcript
      t.binary :statement_of_interest
      t.boolean :accepted
      t.boolean :open
	  t.boolean :complete

      t.timestamps
    end
  end
end
