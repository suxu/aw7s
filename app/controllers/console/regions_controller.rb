module Console
class RegionsController < AppController

	before_action :require_region, :only=>[:show,:edit,:update,:destroy]

	def home

	end

	def index
		@regions = Region.all
	end

	def show
		@region = Region.find_by_id(params[:id])
	end

	def list
		@regions = Region.all
	end

	def new
		@region = Region.new
	end

	# require(:person).permit(:name, :age)
	def create
		@region = Region.new(params.require(:region).permit(:code,:name,:en_name,:normal))
		if @region.save
			redirect_to list_console_regions_path()
		else
			render :action => :new			
		end
	end

	def edit

	end

	def update
		if @region.update_attributes(params.require(:region).permit(:name,:en_name,:normal))
			redirect_to list_console_regions_path
		else
			render :action => :edit
		end
	end

	def destroy
		@region.destroy if @region
		respond_to do |format|
	      format.html { redirect_to list_console_regions_path }
	      format.js { }
	      format.json { head :no_content }
	    end
	end

	private

	def require_region
		@region = Region.find_by_id(params[:id])
	end



end

end