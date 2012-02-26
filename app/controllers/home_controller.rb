class HomeController < ApplicationController
  def index
    @network_update = NetworkUpdate.new
    @activities = User.first.activity_stream.to_a
  end

end
