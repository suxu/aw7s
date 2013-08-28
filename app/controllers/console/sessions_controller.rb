module Console
class SessionsController < Devise::SessionsController

	layout 'console'

	def new
		@player = Player.new
	end

	def create
		resource = warden.authenticate!(:scope => resource_name, :recall => "#{controller_path}#new")
    	sign_in(resource_name, resource)
    	to_url = session[:to_url]
    	return redirect_to :root unless to_url
    	session[:to_url] = nil
		redirect_to console_path
	end

	def destroy
		sign_out()
		redirect_to new_console_session_path 
	end


end

end