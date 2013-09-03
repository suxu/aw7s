module Front
class RegionsController < AppController
	
	def index
		@regions = Region.all
	end

		
end
end