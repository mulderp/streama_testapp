class HomeController < ApplicationController
  include DisplayCase::ExhibitsHelper
  def index
    @network_update = NetworkUpdate.new
    @activities = User.first.activity_stream.to_a
  end

  def json_stream
    @network_update = NetworkUpdate.new
    activities = exhibit(Activity.all.to_ary)
    @activities = activities.map { |a| a.render_json }
#    @activities = exhibit(Activity.all.to_ary)
  end

end
