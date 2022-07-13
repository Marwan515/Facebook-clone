module PostsHelper
  def get_username(a)
    po = Post.find(a)
    usr = User.find(po.user_id)
    usr.username
  end
end
