class Streama::DefinitionExhibit < DisplayCase::Exhibit

  def self.applicable_to?(object)
    object.class.name == "Streama::Definition"
  end

  def render(context)
    s = __getobj__.name.inspect
    context.content_tag(:li) do
      s
    end
  end

end
