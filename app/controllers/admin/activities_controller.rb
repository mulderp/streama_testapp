class Admin::ActivitiesController < ApplicationController

  before_filter :authenticate_admin!

  def index
    @activities = Activity.all
  end

  def destroy
    activity = Activity.find(params[:id])
    activity.delete
    redirect_to admin_activities_path 
  end

end
