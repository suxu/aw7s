module ApplicationHelper

	def active_class
		return 'class=active'
	end

	def normal_tag normal
		return raw('<span class="label label-success">正常</span>') if normal
		return raw('<span class="label label-danger">异常</span>')
	end
end
