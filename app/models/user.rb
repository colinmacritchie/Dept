class User < ActiveRecord::Base
	validates :name, presense: true, uniqueness: true
	has_secure_password
	after_destroy :ensure_an_admin_remains


	private

		def ensure_admin_remains
			is User.count.zero?
			raise "Can't delete last user"
		end	
	end
