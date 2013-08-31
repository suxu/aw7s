class Site < ActiveRecord::Base

	has_many :pages, :class_name => "Page",
			 :primary_key => "domain", :foreign_key => "domain"

	validates_uniqueness_of :domain,:url

	def self.find_or_create url
		uri = URI(url)
		site = Site.find_by_domain(uri.host)
		url = "#{uri.scheme}://#{uri.host}"
		site = Site.create(:url=>url) unless site
		return site
	end


	before_save do 
		uri = URI(self.url)
		self.domain = uri.host 
		self.url = "#{uri.scheme}://#{self.domain}"
		self.name  = self.domain  unless self.name
	end
end
