class CreateProjectScorecards < ActiveRecord::Migration
  def self.up
    create_table :project_scorecards do |t|
      t.integer :database_score
      t.integer :webapp_score
      t.integer :design_score
      t.integer :tech_plan_score
      t.integer :webdev_score
      t.integer :content_mgt_score
      t.integer :tech_support_score
      t.integer :egov_score
      t.integer :ehealth_score
      t.integer :updated_by

      t.timestamps
    end
  end

  def self.down
    drop_table :project_scorecards
  end
end
