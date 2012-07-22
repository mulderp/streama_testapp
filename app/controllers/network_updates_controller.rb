class NetworkUpdatesController < ApplicationController

  before_filter :authenticate_user!

  include DisplayCase::ExhibitsHelper

  def create
    param_hash = {:user => current_user.id}.merge(params[:network_update])
    network_update = NetworkUpdate.create!(param_hash)
    current_user.publish_activity(:post, {actor: current_user, object: network_update, receivers: current_user.followers})
    
    redirect_to user_root_path
  end

  def index
    @network_updates = exhibit(NetworkUpdate.all.to_ary)
  end

end
