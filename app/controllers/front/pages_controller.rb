module Front
class PagesController < AppController

	def index
		@pages = Page.all.paginate(:page => params[:page], :per_page => 15)
	end
		
end
end