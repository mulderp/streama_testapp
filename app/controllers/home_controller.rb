class HomeController < ApplicationController

  def index
    @network_update = NetworkUpdate.new
    @activities = exhibit(current_user.activity_stream) if current_user
    @activities = exhibit("You need to signup a user first") if User.guest_user.nil?
    @activities ||= exhibit(User.guest_user.activity_stream)
  end


end
