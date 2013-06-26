class ActivitiesController < ApplicationController

  before_filter :authenticate_user!

  def published
    @activities = current_user.published_activities.to_ary
    render :json => @activities.to_json
  end

end
