class ProjectApplication < ActiveRecord::Base
	# Setup accessible (or protected) attributes for your model
	attr_accesible :partner_id, :description, :number_of_consultants, :accepted, :open
end