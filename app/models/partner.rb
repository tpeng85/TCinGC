class Partner < ActiveRecord::Base
	# Setup accessible (or protected) attributes for your model
	attr_accessible :name, :address_one, :address_two, :type, :description, :language, :living_accomodation, :living_utilities, :distance_to_duty_station, :cost_of_living, :transportation, :transportation, :cost_of_transportation, :visa_fee, :visa_requirements, :medivac_details

	#Relationships
	has_many :assignments
	has many :users, :through => :assignments
	has_many :project_applications, :dependent => :destroy
end
