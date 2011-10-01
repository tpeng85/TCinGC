class StudentApplication < ActiveRecord::Base
	# Setup accessible (or protected) attributes for your model
	attr_accessible :resume, :transcript, :statement_of_interest, :accepted, :open

end
