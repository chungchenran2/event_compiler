class User < ActiveRecord::Base
	has_many :comments
	has_many :event_sjsus

	has_secure_password
	validates :name, :presence => true
	validates :email, presence: true, uniqueness: true

end
