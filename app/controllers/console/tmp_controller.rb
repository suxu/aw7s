module Console

class TmpController < AppController

end

end


# <li class="dropdown">
#     <a href="#" class="dropdown-toggle" data-toggle="dropdown">
#     <span class="glyphicon glyphicon-user"></span> <%= current_player.name %>
#     <b class="caret"></b></a>
#     <ul class="dropdown-menu">
#     <li>
#     <%= link_to raw('<span class="glyphicon glyphicon-off"></span> 注销') ,destroy_player_session_path,:method=>:delete,:confirm=>"你是否要注销？" %>
#     </li>
#     </ul>
# </li>