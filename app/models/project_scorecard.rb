class ProjectScorecard < ActiveRecord::Base
	# Setup accessible (or protected) attributes for your model
	attr_accessible :user_id, :project_application_id, :database_score, :web_app_score, :design_score, :tech_plan_score, :web_dev_score, :content_mgt_score, :tech_support_score, :geo_infosys_score, :egov_score, :ehealth_score, :security_score, :updated_by 
	
	# Relationships
	belongs_to :user
	belongs_to :project_application
end
