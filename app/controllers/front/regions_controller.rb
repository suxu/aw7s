module Front
class RegionsController < AppController
	
	def index
		@regions = Region.all
	end

	def show
		@region = Region.find_by_code(params[:id])
		@zones = @region.zones if @region
		render :layout=>nil
	end

		
end
end