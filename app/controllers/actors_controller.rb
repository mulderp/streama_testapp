class ActorsController < ApplicationController
  
  include DisplayCase::ExhibitsHelper

  def index
    @actors = exhibit(User.all.to_ary)
  end

end
