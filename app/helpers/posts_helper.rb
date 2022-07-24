module PostsHelper
  def get_username(a)
    po = Post.find(a)
    usr = User.find(po.user_id)
    usr.username
  end

  def likes_count(pst)
    a = pst.likes.count
    a
  end

  def user_liked(p)
    p.likes.find { |l| l.user_id == current_user.id}
  end
end
