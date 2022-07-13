class FriendRequest < ApplicationRecord
  belongs_to :user

  def self.req_exist(ur_id, fr_id)
    if fr = Friend_request.where(user_id: ur_id, friend_id: fr_id) || fr = Friend_request.where(user_id: fr_id, friend_id: ur_id)
      fr
    else
      false
    end
  end

end
