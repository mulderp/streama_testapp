class HomeController < ApplicationController
  def index
    @network_update = NetworkUpdate.new
  end

end
