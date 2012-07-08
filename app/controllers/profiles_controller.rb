class ProfilesController < ApplicationController
  def show
    @profile = exhibit(User.where({:first_name => params[:id]}).first)
  end
end
