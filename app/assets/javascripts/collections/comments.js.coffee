class Streamaweb.Comments extends Backbone.Collection

  url: "/api/v1/comments" #activities/" + @id + "/comments.json"

  fetch: (id) ->
    @id = id
    Backbone.Collection::fetch.call this

  model: Streamaweb.Models.Comment

