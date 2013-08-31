class Site < ActiveRecord::Base

	validates_uniqueness_of :domain,:url

	before_save :set_domain


	def set_domain
		uri = URI(self.url)
		self.domain = uri.host 
		self.url = "#{uri.scheme}://#{self.domain}"
		
	end
end
