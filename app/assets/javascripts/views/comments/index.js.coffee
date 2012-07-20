class Streamaweb.Views.CommentsIndex extends Backbone.View

  template: JST['comments/index']

  events: ->
    { "click" : "renderOnClick" }

  render: ->
    console.log(@.el)
    actions = $(@el).closest('.actions')
    input_form = new Streamaweb.Views.CommentsForm({el: actions})
    input_form.render()

  renderOnClick: ->
    console.log("click")
    @render()
    false
