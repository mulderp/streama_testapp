class ActivityExhibit < DisplayCase::Exhibit

  def self.applicable_to?(object)
    object.class.name == 'Activity'
  end

  def json_ary
    actor_object = %Q( { "objectType": "#{__getobj__.actor['type'].downcase}", "id": "#{__getobj__.actor['id']}"})
    actor = [ "actor: {", actor_object, "}" ]
  end

  def render(context)
    context.render(:partial => 'activities/activity', :locals => { :activity => __getobj__ })
  end

  def as_json(attr={})
    actor = __getobj__.load_instance(:actor).as_json
    object = __getobj__.load_instance(:object).as_json

    { "id" => __getobj__._id, "actor" => actor, "verb" => "#{__getobj__.verb}", "object" => object } 
  end

end
