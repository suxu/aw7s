module Console
class PagesController < AppController

	def index

	end

	def list
		@pages = Page.all.paginate(:page => params[:page], :per_page => 10)
	end

	def show
		@page = Page.find_by_id(params[:id])
	end

	def new
		@page = Page.new(:published_at=>Date.today)
	end

	def create
		@page = Page.new(params.require(:page).permit(:title,:url,:img_url,:summary,:original,:is_banner,:is_case,:published_at)) 
		@page.tag_list = params.require(:page).permit(:tags)[:tags]
		@page.player_id = current_player.id
		@page.player_name = current_player.name
		if @page.save
			redirect_to list_console_pages_path
		else	
			render :action => :new
		end
	end

	def edit
		@page = Page.find_by_id(params[:id])
	end

	def update
		@page = Page.find_by_id(params[:id])
		@page.tag_list = params.require(:page).permit(:tags)[:tags]
		if @page.update_attributes(params.require(:page).permit(:title,:url,:img_url,:summary,:original,:is_banner,:is_case,:published_at))
			redirect_to list_console_pages_path
		else
			render :action => :edit
		end
	end

	def destroy
		@page = Page.find_by_id(params[:id])
		return render :js =>'alert("没有这个页面!");' unless @page
		@page.destroy
	end

	
end

end