module PersonsHelper
	require 'securerandom'


	def random_string 
		SecureRandom.hex
	end
end