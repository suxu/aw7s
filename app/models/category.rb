class Category < ActiveRecord::Base

	has_many :services,:class_name => "Service"

	validates_uniqueness_of :code,:name
	validates_presence_of :code,:name
	

	def name_text
		"#{self.id} (#{self.name})"
	end

	def full_name
		"#{self.name} #{self.en_name}"
	end

end
