module Console
class ZonesController < AppController

	load_and_authorize_resource :class => "Zone"

	before_action :require_region
	before_action :require_region_zones #,:only=>[:index,:edit]

	def index
		@zone  = Zone.new
		@action = "create"
		@zones = @region.zones
	end

	def create		
		@region.zones.build(params.require(:zone).permit(:code,:remark,:normal))
		if @region.save
			redirect_to console_region_zones_path(@region)
		else
			render :action => :index
		end
	end

	def edit
		@zone = @region.zones.find_by_id(params[:id])
		@action = "update"
		render :template => "console/zones/index" 
	end

	def update
		@zone = @region.zones.find_by_id(params[:id])
		if @zone.update_attributes(params.require(:zone).permit(:code,:remark,:normal))
			redirect_to console_region_zones_path(@region)
		else
			render :action => :edit
		end
	end

	def destroy
		@zone = @region.zones.find_by_id(params[:id])
		@zone.destroy if @zone
	end

	private 
	def require_region
		@region = Region.find_by_id(params[:region_id])
	end

	def require_region_zones
		@zones = @region.zones
	end

end
end