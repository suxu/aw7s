module Front
class PagesController < AppController

	def index
		@pages = Page.all.paginate(:page => params[:page], :per_page => 10)
	end
		
end
end