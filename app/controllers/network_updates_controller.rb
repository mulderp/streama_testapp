class NetworkUpdatesController < ApplicationController

  before_filter :authenticate_user!

  def create
    param_hash = {:user => current_user.id}.merge(params[:network_update])
    network_update = NetworkUpdate.create!(param_hash)
    # current_user.publish_activity(:share, :object => network_update, :receivers => User.all )
    Activity.publish(:share, {:actor => current_user, :object => network_update  })
    
    redirect_to user_root_path
  end

end
