module FriendRequestsHelper
  
  def get_fuser(u)
    a = User.find(id: id)
    a.username
  end

  def sented_rq(req)
    if req.user_id == current_user.id && req.confirmed == false
      req
    end
  end

  def recieved_rq(req)
    if req.friend_id == current_user.id && req.confirmed == false
      req
    end
  end


end
