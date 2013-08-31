class Page < ActiveRecord::Base


	validates_uniqueness_of :url

	before_save :set_domain


	def set_domain
		self.domain =  URI(self.url).host 
	end
end
