class FriendRequestsController < ApplicationController
  before_action :find_requests
  def index
    @friend_requests = Friend_requests.all.where(user_id: current_user.id || friend_id: current_user.id)
  end
  
  def destroy
    @friend_request.destroy
  end

  private

  def find_requests
    @friend_request = Friend_requests.find(params[:id])
  end

end
