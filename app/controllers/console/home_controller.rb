module Console
class HomeController < AppController

	before_filter :require_player ,:except=>[:show]

	def show
		@banners = Page.banner_scope
		@pages = Page.all.limit(10)
	end
end
end