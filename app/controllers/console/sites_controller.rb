module Console
class SitesController < AppController

	def index
		@site  = Site.new
		@sites = Site.all
		@action = "create"
	end

	def show

	end

	def new
		@site = Site.new
		render :layout=>nil
	end

	def create
		@site = Site.new(params.require(:site).permit(:name,:url,:normal))
		if @site.save
			redirect_to console_sites_path()
		else
			render :action => :index
		end
	end

	def edit
		@site = Site.find_by_id(params[:id])
		render :layout=>nil
	end

	def update
		@site = Site.find_by_id(params[:id])
		@sites = Site.all
		if @site.update_attributes(params.require(:site).permit(:name,:url,:normal))
			redirect_to console_sites_path()
		else
			render :action => :index
		end
	end

	def destroy
		@site = Site.find_by_id(params[:id])
		return render :js =>'alert("没有这个网站!");' unless @site
		@site.destroy
	end

	
end

end