class Streamaweb.Views.CommentsIndex extends Backbone.View

  template: JST['comments/index']

  events: ->
    { "click" : "renderOnClick" }

  render: ->
    console.log(@.el)
    actions = $(@el).closest('.actions')
    actions.replaceWith(@template({actor: $(this)}))

  renderOnClick: ->
    console.log("click")
    @render()
    false
