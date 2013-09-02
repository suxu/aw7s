class Page < ActiveRecord::Base

	

	belongs_to :site, :class_name => 'Site' ,
			   :primary_key => "domain", :foreign_key => "domain",:counter_cache => true

	#acts_as_taggable

	validates_uniqueness_of :url

	default_scope { order('published_at DESC') }

	# scope :banner_scope, -> { where(is_banner: true).where.not(img_url: '') }

	def self.banner_scope 
		where(:is_banner=>true).where.not(:img_url =>  '').where.not(:img_url =>nil)
	end

	def self.original_scope
		where(:original => true)
	end

	def self.reload_data
		Page.destroy_all
		page = YAML::load_file(File.join(Rails.root, 'db', 'page.yml'))
		Page.create(page["pages"])
	end

	#
	before_save do
		self.site = Site.find_or_create(self.url)
		#self.domain =  URI(self.url).host
		self.published_at = Time.now unless self.published_at
	end
end
