module Console
class CategoriesController < AppController

	load_and_authorize_resource :class => "Category"

	before_action :require_category,:only => [:show,:edit,:update,:destroy]

	def index
		
	end

	def list
		@categories = Category.all
	end

	def show
		#@category = Category.find_by_id(params[:id])
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(params.require(:category).permit(:code,:name,:en_name))
		if @category.save
			redirect_to list_console_categories_url
		else
			render :action => :new
		end
	end

	def edit

	end

	def update
		if @category.update_attributes(params.require(:category).permit(:name,:en_name))
			redirect_to list_console_categories_url
		else
			render :action => :edit			
		end
	end

	def destroy
		@category.destroy if @category
		respond_to do |format|
	      format.html { redirect_to list_console_categories_url }
	      format.js { }
	      format.json { head :no_content }
	    end
	end



	private

	def require_category
		@category = Category.find_by_id(params[:id])
	end

end

end