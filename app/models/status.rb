class Status < ActiveRecord::Base

	# attribute
	validates :description, :presence => true
end