class Store < ActiveRecord::Base
	geocoded_by :latitude
	after_validation :geocode
end
