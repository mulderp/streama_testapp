class HomeController < ApplicationController

  def index
    @network_update = NetworkUpdate.new
    @activities = exhibit(current_user.activity_stream) if current_user
    @activities ||= exhibit(User.guest_user.activity_stream)
  end


end
