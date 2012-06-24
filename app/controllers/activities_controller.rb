class ActivitiesController < ApplicationController

  before_filter :authenticate_user!

  def published
    @activities = exhibit(current_user.published_activities.to_ary)
  end

end
