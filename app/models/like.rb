class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

  def likes_count(pos)
    count = Like.where(post_id: pos.id).count
  end
end
