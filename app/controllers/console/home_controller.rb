module Console
class HomeController < AppController

	before_filter :require_player ,:except=>[:show]

	def show
		
	end
end
end