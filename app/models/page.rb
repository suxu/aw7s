class Page < ActiveRecord::Base

	acts_as_taggable

	#acts_as_taggable_on :keywords

	validates_uniqueness_of :url

	before_save :set_domain


	def set_domain
		self.domain =  URI(self.url).host 
	end
end
