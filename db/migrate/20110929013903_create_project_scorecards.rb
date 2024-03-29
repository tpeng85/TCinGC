class CreateProjectScorecards < ActiveRecord::Migration
  def change
    create_table :project_scorecards do |t|
      t.integer :user_id
      t.integer :project_application_id
      t.integer :database_score
      t.integer :web_app_score
      t.integer :design_score
      t.integer :tech_plan_score
      t.integer :web_dev_score
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
end
