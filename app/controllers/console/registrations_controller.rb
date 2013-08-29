module Console
class RegistrationsController < Devise::RegistrationsController

	layout 'console'


	def new
		@player = Player.new
	end

	def create
		@player = Player.new(params.require(:player).permit(:name,:email,:password,:password_confirmation))
		@player.phone = ""
		if @player.save
			sign_in("player",@player)
     		redirect_to console_path
		else
			render :action => :new	
		end
	end

end


end