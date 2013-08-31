module Console
class HomeController < AppController

	before_filter :require_player ,:except=>[:show]

	def show
		@pages = Page.banner_scope
	end
end
end