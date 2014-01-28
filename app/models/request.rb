class Request < ActiveRecord::Base

	# attributes and validations
	validates :description, :presence => :true, :allow_blank => false
	validates :status, :presence => true
	validates :client_id, :presence => true

	# associations
	belongs_to :client
end