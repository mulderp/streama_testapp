class Api::V1::ActivitiesController < ApplicationController

  respond_to :json

  def index
    @activities = Activity.all.to_ary

    respond_with(@activities.to_json)
  end

end
