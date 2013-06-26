window.comments_views = []
window.Streamaweb =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    console.log 'Hello from Backbone!'
    new Streamaweb.PostsView({
      el: $("#activities"),
      input: $("#network_update_content"), 
      activities: $("#activities")
    })

    $('.comment').each((index) ->
      window.comments_views.push(new Streamaweb.Views.CommentsForm({el:$(this)}))
    )
    console.log(comments_views)

$(document).ready ->
  Streamaweb.init()
