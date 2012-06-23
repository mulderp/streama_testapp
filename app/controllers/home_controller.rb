class HomeController < ApplicationController
  include DisplayCase::ExhibitsHelper

  def index
    @network_update = NetworkUpdate.new
    @activities = current_user.activity_stream if current_user
    @activities ||= User.guest_user.activity_stream
  end

  def published
    @activities = exhibit(current_user.published_activities.to_ary)
  end

end
