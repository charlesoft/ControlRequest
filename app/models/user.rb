class User < ActiveRecord::Base

	# attributes and validations
	validates :name, :presence => true, :allow_blank => false, :length => {:minimum => 5, :maximum => 50}
	validates :email, :presence => true, :allow_blank => false, :fomat => {:with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create}

	# associations
	has_many :clients
end
