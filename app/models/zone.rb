class Zone < ActiveRecord::Base

	belongs_to :region, :class_name => 'Region' ,
			   :primary_key => "code", :foreign_key => "region_code",:counter_cache => true #,counter_cache: true


	
end
