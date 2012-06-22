class Api::V1::ActivitiesController < ApplicationController

  respond_to :json

  include DisplayCase::ExhibitsHelper

  def index
    @activities = exhibit(Activity.all.to_ary)

    respond_with(JSON.pretty_generate(@activities.as_json))
  end

end
