class HomeController < ApplicationController

  def index
    @network_update = NetworkUpdate.new
    @activities = current_user.activity_stream if current_user
    @activities ||= User.guest_user.activity_stream
  end


end
