module Front
class CategoriesController < AppController
	
	def index
		@categories = Category.all
	end

end
end
