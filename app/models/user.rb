class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[facebook]
  has_many :posts, dependent: :destroy
  has_many :friend_requests
  has_many :friends_request_pendings, -> { where confirmed: false }, class_name: 'Friend_request', foreign_key: 'friend_id'
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  def friends
    fi = Friend_requests.where(user_id: id, confirmed: true).pluck(:friend_id)
    rf = Friend_request.where(friend_id: id, confirmed: true).pluck(:user_id)
    friend_list = fi + rf
    friend_list
  end

  def sent_req(friend)
    Friend_request.create(friend_id: friend.id, user_id: id)
  end

end
