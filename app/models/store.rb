class Store < ActiveRecord::Base
	geocoded_by :address
	after_validation :geocode

	has_secure_password
end
