class StudentApplication < ActiveRecord::Base
	# Setup accessible (or protected) attributes for your model
	attr_accessible :resume, :transcript, :statement_of_interest, :accepted, :open

	# Relationships
	belongs_to :user
	has_many :student_scorecards
end
