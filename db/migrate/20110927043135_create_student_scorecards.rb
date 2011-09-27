class CreateStudentScorecards < ActiveRecord::Migration
  def self.up
    create_table :student_scorecards do |t|
      t.integer :resume_score
      t.integer :transcript_score
      t.integer :statement_score
      t.integer :special_class_score
      t.integer :database_score
      t.integer :webapp_score
      t.integer :design_score
      t.integer :tech_plan_score
      t.integer :webdev_score
      t.integer :content_mgt_score
      t.integer :tech_support_score
      t.integer :geo_infosys_score
      t.integer :egov_score
      t.integer :ehealth_score
      t.integer :security_score
      t.integer :updated_by

      t.timestamps
    end
  end

  def self.down
    drop_table :student_scorecards
  end
end
