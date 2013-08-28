module Console
class AppController < ApplicationController

	#protect_from_forgery
	#
	#before_filter :authenticate_player!

	before_filter :require_player

	layout 'console'

	helper_method :current_user,:current_master

	rescue_from CanCan::AccessDenied do |exception|
    	redirect_to  request.referer, :alert => 'Sorry 您没有权限执行这个操作,只有Master可以!'
  	end

	private
	def current_user
		return current_player
	end
	def current_master
		return current_player
	end

	def require_player
	  	unless current_player
	  		flash[:sign_msg] = "请先登录，才能进行操作"
	  	 	session[:to_url] = request.url
	  	 	return redirect_to new_console_session_path  
	  	end
  	end
end
end