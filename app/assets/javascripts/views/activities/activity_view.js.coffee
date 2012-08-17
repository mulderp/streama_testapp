class Streamaweb.ActivityView extends Backbone.View

  template: JST['activity']
  tagName: 'li'
  className: 'activity well activity-well span8'

  initialize: ->
    @model.bind('change', this.render, this)

  render: ->
    $(@.el).html(this.template(this.model.toJSON()));
    return this


