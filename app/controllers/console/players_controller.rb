module Console

class PlayersController < AppController

	load_and_authorize_resource :class => "Player",except: [:create,:update]

	def index
		
	end

	def list
		@players = Player.all.paginate(:page => params[:page], :per_page => 10)
	end

	def new
		@player = Player.new
	end

	def create
		@player = Player.new(params.require(:player).permit(:name,:email,:phone,:password,:password_confirmation))
		if @player.save
			redirect_to list_console_players_path()
		else
			render :action => :new			
		end
	end

	def edit
		@player = Player.find_by_id(params[:id])
	end

	def update
		@player = Player.find_by_id(params[:id])
	end

	def destroy
		@player = Player.find_by_id(params[:id])
		return render :js =>'alert("没有这个玩家!");' unless @player
		return render :js =>'alert("不能删除当前玩家!");' if @player == current_player
		return render :js =>'alert("不能删除Master玩家!");' if @player.is_master
		@player.destroy
	end

end

end