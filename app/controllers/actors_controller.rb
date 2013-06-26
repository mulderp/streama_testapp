class ActorsController < ApplicationController
  
  def index
    @actors = User.all.to_ary
  end

end
