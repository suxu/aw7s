module Front
class RegionsController < AppController
	
	def index
		@regions = Region.all
	end

	def show
		
	end

		
end
end