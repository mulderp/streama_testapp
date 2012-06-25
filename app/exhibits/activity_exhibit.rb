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
    actor_object = { "objectType" => "#{__getobj__.actor['type']}", 
                     "id" => "#{__getobj__.actor['id']}"}

    content = Kernel.const_get(__getobj__.object["type"]).send(:find, __getobj__.object["id"]).content
    object = { "objectType" => "#{__getobj__.object['type'].to_s}", 
               "id" => "#{__getobj__.actor['id']}",
               "content" => content }

    { "actor" => actor_object, "verb" => "#{__getobj__.verb}", "object" => object } 
  end

end
