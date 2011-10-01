class StudentApplication < ActiveRecord::Base
	attr_accessible :resume, :transcript, :statement_of_interest, :accepted, :open, :complete

end


t.integer :user_id
      t.binary :resume
      t.binary :transcript
      t.binary :statement_of_interest
      t.boolean :accepted
      t.boolean :open
	  t.boolean :complete