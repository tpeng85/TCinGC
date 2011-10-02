class StudentScorecard < ActiveRecord::Base
	# Setup accessible (or protected) attributes for your model
	attr_accessible :user_id, :student_application_id, :resume_score, transcript_score, :statement_of_interest_score, :special_class_score, :database_score, :web_app_score, :design_score, :tech_plan_score, :web_dev_score, :content_mgt_score, :tech_support_score, :geo_infosys_score, :egov_score, :ehealth_score, :security_score, :updated_by 
	
	# Relationships
	belongs_to :user
	belongs_to :student_application
end
