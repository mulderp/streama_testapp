class Streama::DefinitionExhibit < DisplayCase::Exhibit

  def self.applicable_to?(object)
    object.class.name == "Streama::Definition" or object.class.name == "String"
  end

  def render(context)
    s = __getobj__.inspect
    context.content_tag(:li) do
      s
    end
  end

end
