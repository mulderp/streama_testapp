class Admin::ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
  end

  def destroy
    activity = Activity.find(params[:id])
    activity.delete
    redirect_to admin_activities_path 
  end

end
