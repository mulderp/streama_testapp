class Streamaweb.PostsView extends Backbone.View

  initialize: (options) ->

    @input = options.input
    _.bindAll @, 'addOne', 'addAll', 'render'

    Activities.bind 'add',   @addOne
    Activities.bind 'reset', @addAll
    Activities.bind 'all',   @render

    Activities.fetch()
