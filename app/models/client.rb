class Client < ActiveRecord::Base

	# attributes and validations
	
	validates :description, :presence => true, :allow_blank => false, :length => {:minimum => 5, :maximum => 50}
	validates :adress, :presence => true, :allow_blank => false

	# associations
	belongs_to :user

	has_many :requests

end