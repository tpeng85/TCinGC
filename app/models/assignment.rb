class Assignment < ActiveRecord::Base
	# Setup accessible (or protected) attributes for your model
	attr_accessible :user_id, :partner_id
	
	# Relationships
	belongs_to :user
	belongs_to :partner
end
