class ActivityExhibit < DisplayCase::Exhibit

  def self.applicable_to?(object)
    object.class.name == 'Activity'
  end

  def json_ary
    actor_object = %Q( { "objectType": "#{__getobj__.actor['type'].downcase}", "id": "#{__getobj__.actor['id']}"})
    actor = [ "actor: {", actor_object, "}" ]
  end

  def to_json

#    s = ["{" ]
#    s << json_ary.join("\n") 
#    s << %Q( "verb": "#{__getobj__.verb.to_s}", </br>)
#    s << %Q( 
#    s << "}"
     s = [ 1, 2 => 3 ]
  end

  def as_json(attr={})
    actor_object = { "objectType" => "#{__getobj__.actor['type']}", "id" => "#{__getobj__.actor['id']}"}
    object = { "objectType" => "#{__getobj__.object['type'].to_s}", "id" => "#{__getobj__.actor['id']}"}
    { "actor" => actor_object, "verb" => "#{__getobj__.verb}", "object" => object } 
  end

end
