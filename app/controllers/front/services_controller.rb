module Front
class ServicesController < AppController


	def index
		@categories = Category.all
		@services = Service.includes(:category)
		@services = @services.paginate(:page => params[:page], :per_page => 10)
	end


	def by
		@categories = Category.all
		@services = Service.includes(:category).where(:category_code => params[:category_code])
		@services = @services.paginate(:page => params[:page], :per_page => 10)
		render :action => :index
	end


end

end