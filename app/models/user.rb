class User < ActiveRecord::Base
  ROLES = %w[staff student contact]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :first_name, :last_name, :mobile_num, :office_num, :skype, :remember_me
end
