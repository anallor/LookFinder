class Store < ActiveRecord::Base
	geocoded_by :latitude
	after_validation :geocode
	has_secure_password
end
