class Streamaweb.Views.CommentsForm extends Backbone.View

  template: JST['comments/index']

  events: ->
    { "submit" : "renderAfterSubmit" }

  render: ->
    console.log(@el)
    id = @el.children[0].getAttribute('id')
    $(this.el).html(@template({id: id}))

  renderAfterSubmit: ->
    console.log("submit")
    comments = new Streamaweb.Comments()
    comments.create({content: this.el.children[0].children[1].value})

    return false
