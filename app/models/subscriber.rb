class Subscriber < ActiveRecord::Base
	has_secure_password
	has_many :charges
end
