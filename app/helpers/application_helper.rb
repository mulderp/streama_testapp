module ApplicationHelper
  def render_tabs(context)
    render :partial => 'shared/tabs', :locals => { :is_active => "#{context.controller.class.name}##{context.action_name}"}
  end
end
