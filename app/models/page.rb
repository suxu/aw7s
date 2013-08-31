class Page < ActiveRecord::Base

	acts_as_taggable

	belongs_to :site, :class_name => 'Site' ,
			   :primary_key => "domain", :foreign_key => "domain",:counter_cache => true


	validates_uniqueness_of :url

	#
	before_save do
		self.site = Site.find_or_create(self.url)
		#self.domain =  URI(self.url).host
		self.published_at = Time.now unless self.published_at
	end
end
