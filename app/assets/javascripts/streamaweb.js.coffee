window.comments_views = []
window.Streamaweb =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    console.log 'Hello from Backbone!'
    $('.comment').each((index) ->
      window.comments_views.push(new Streamaweb.Views.CommentsIndex({el:$(this)}))
    )
    console.log(comments_views)

$(document).ready ->
  Streamaweb.init()
