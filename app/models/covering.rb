class Covering < ActiveRecord::Base

	belongs_to :region, :class_name => 'Region' ,
			   :primary_key => "code", :foreign_key => "region_code"  #,:counter_cache => true 

	belongs_to :service, :class_name => 'Service' ,
			   :primary_key => "code", :foreign_key => "service_code" #,:counter_cache => true 
	#
	validates_presence_of :region_code,:service_code
	validates_uniqueness_of :region_code, :scope => :service_code
end
