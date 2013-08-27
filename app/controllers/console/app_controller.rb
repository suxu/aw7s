module Console
class AppController < ApplicationController
	#before_filter :authenticate_user!

  protect_from_forgery
	#before_filter :authenticate_user!

	layout 'console'



	# helper_method :active_class

	private 

	# def active_class
	# 	return 'class=active'
	# end
end
end