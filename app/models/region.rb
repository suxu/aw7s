class Region < ActiveRecord::Base
	#
	has_many :zones, :class_name => "Zone",
			 :primary_key => "code", :foreign_key => "region_code"
	#
	has_many :coverings, :class_name => 'Covering',
			 :primary_key => "code", :foreign_key => "region_code"
	#
	has_many :services,:class_name => 'Service',
			 :primary_key => 'code',:foreign_key => 'region_code',through: :coverings

	validates_presence_of :code,:name
  	validates_uniqueness_of :code,:name

	
	def code_name
		"#{self.code} / #{self.name}"
	end

	def full_name
		"#{self.name} #{self.name_en}"
	end

end
