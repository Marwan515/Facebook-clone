class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def comment_count(pos)
    count = Comment.where(post_id: pos.id).count
  end
end
