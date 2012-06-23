class ActorExhibit < DisplayCase::Exhibit

  def self.applicable_to?(object)
    object.class.name == 'User'
  end

  def render(context)
    context.render(:partial => "actors/actor", :locals => {:actor =>__getobj__})
  end
end

