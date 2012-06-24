class ObjectsController < ApplicationController
  def index
    @network_updates = NetworkUpdate.all.to_ary
  end

end
