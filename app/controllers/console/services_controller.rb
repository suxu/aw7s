module Console

class ServicesController < AppController

	def home

	end

	def index

	end

	def show
		@service = Service.find_by_id(params[:id])
	end

	def list
		@services = Service.all.paginate(:page => params[:page], :per_page => 10)
	end

	def new
		@service = Service.new
	end


	def create
		@service = Service.new(params.require(:service).permit(:code,:category_code,:name,:full_name,:caption,:normal))
		if @service.save
			redirect_to list_console_services_path()
		else
			render :action => :new			
		end
	end


	def edit
		@service = Service.find_by_id(params[:id])
	end

	def update
		@service = Service.find_by_id(params[:id])

		if @service.update_attributes(params.require(:service).permit(:category_code,:name,:full_name,:caption,:normal))
			redirect_to list_console_services_url
		else
			render :action => :edit			
		end
	end

	def regions
		@service = Service.find_by_id(params[:id])
		@regions = @service.regions
	end

	def coverings
		@service = Service.find_by_id(params[:id])
		@coverings = @service.coverings.includes(:region)
	end


	def destroy
		@service = Service.find_by_id(params[:id])
		@service.destroy if @service
		respond_to do |format|
	      format.html { redirect_to list_console_regions_path }
	      format.js { }
	      format.json { head :no_content }
	    end
	end

end

end