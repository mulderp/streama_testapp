class Streamaweb.ActivityView extends Backbone.View

  template: JST['activities']
  tagName: 'li'
  className: 'activities well activity-well span8'

  initialize: ->
    @model.bind('reset', this.render, this)
