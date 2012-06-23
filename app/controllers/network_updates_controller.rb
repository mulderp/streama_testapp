class NetworkUpdatesController < ApplicationController

  before_filter :authenticate_user!

  def create
    param_hash = {:user => current_user.id}.merge(params[:network_update])
    network_update = NetworkUpdate.create!(param_hash)
    current_user.publish_activity(:post, :object => network_update, :receivers => current_user.followers.insert(current_user) )
    
    redirect_to user_root_path
  end

end
