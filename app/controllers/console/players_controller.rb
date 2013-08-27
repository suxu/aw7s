module Console

class PlayersController < AppController

	def index
		
	end

	def list
		@players = Player.all
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

end

end