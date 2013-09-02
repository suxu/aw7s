module Front
class HomeController < AppController

	def show
		@banners = Page.banner_scope
		@pages = Page.all.limit(10)
	end
end
end