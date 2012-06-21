class ActivityExhibit < DisplayCase::Exhibit

  def self.applicable_to?(object)
    object.class.name == 'Activity'
  end

  def render_json
    s = "{  </br>" 
    s << %Q( "actor": { "objectType": "#{__getobj__.actor['type'].downcase}", "id": "#{__getobj__.actor['id']}"},</br>)
    s << %Q( "verb": "#{__getobj__.verb.to_s}", </br>)
    s << %Q( "object": { "objectType": "#{__getobj__.object['type'].to_s}, "id": "#{__getobj__.actor['id']}"},</br>)
    s << "}"
    s.html_safe
  end

end
