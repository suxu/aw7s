class Service < ActiveRecord::Base

	belongs_to :category, :class_name => 'Category' ,
			   :primary_key => 'code', :foreign_key => 'category_code',:counter_cache => true #,counter_cache: true

	has_many :coverings, :class_name => 'Covering',
			 :primary_key => 'code', :foreign_key => 'service_code'

	has_many :regions,:class_name => 'Region',
			 :primary_key => 'code',:foreign_key => 'service_code',through: :coverings

	#
	validates_presence_of :code,:name
  	validates_uniqueness_of :code,:name
  	
	def aws_url
		return "http://aws.amazon.com/#{self.code}"
	end
end
